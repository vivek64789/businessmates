import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../cubits/image_cubit/image_cubit.dart';
import 'bm_button.dart';
import 'handle_bar_widget.dart';

class ImageUploadBottomSheet extends StatefulWidget {
  final Function(String) onImageUploaded;
  const ImageUploadBottomSheet({Key? key, required this.onImageUploaded})
      : super(key: key);

  @override
  State<ImageUploadBottomSheet> createState() => _ImageUploadBottomSheetState();
}

class _ImageUploadBottomSheetState extends State<ImageUploadBottomSheet> {
  File? _image; //?
  double? _imagePreviewRadius = 0;
  double? _previewBorderOpacity = 0;
  bool isNotChanged = true;
  bool isPickerInit = true;
  @override
  void initState() {
    super.initState();
  }

  //method to open image from gallery
  _imageFromGallery() async {
    // final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    // pick multiple image and save it in list

    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }
    _image = File(image.path);
    setState(() {
      _imagePreviewRadius = 0;
      _previewBorderOpacity = 0;
      isNotChanged = !isNotChanged;
    });
  }

  //method to open image from camera
  _imageFromCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) {
      return;
    }
    _image = File(image.path);
    setState(() {
      _imagePreviewRadius = 0;
      _previewBorderOpacity = 0;
      isNotChanged = !isNotChanged;
    });
  }

  List<Widget> previewImages() {
    List<Widget> images = [];
    if (_image == null) {
      return images;
    }
    context.read<ImageCubit>().localImageChanged(_image!);
    images.add(
      Image.file(
        _image!,
        // height: 200,
        // width: 200,
      ),
    );
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        _imagePreviewRadius = 100;
        _previewBorderOpacity = 1;
      });
    });

    return images;
  }

  @override
  Widget build(BuildContext context) {
    ImageCubit imageCubit = BlocProvider.of<ImageCubit>(context);
    return SizedBox(
      child: SingleChildScrollView(
        child: BlocConsumer<ImageCubit, ImageState>(
          listener: (context, state) {
            if (state.status == Status.success) {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Image Uploaded Successfully'),
                  duration: Duration(seconds: 2),
                ),
              );
            } else if (state.status == Status.error) {
              // alert dialog
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Error'),
                    content: Text(state.errorMessage),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Ok'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  );
                },
              );
            }
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const SheetHandleBarWidget(),
                const SizedBox(
                  height: 20,
                ),
                previewImages().isNotEmpty
                    ? GestureDetector(
                        onLongPress: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Delete Image'),
                              content: const Text(
                                  'Are you sure you want to delete this image?'),
                              actions: [
                                TextButton(
                                  child: const Text('Cancel'),
                                  onPressed: () => Navigator.pop(context),
                                ),
                                TextButton(
                                  child: const Text('Delete'),
                                  onPressed: () {
                                    setState(() {
                                      _image = null;
                                    });
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          );
                          setState(() {});
                        },
                        child: AnimatedContainer(
                          height: 200,
                          duration: const Duration(milliseconds: 1000),
                          child: CircleAvatar(
                            radius: _imagePreviewRadius,
                            backgroundColor: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(_previewBorderOpacity!),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: CircleAvatar(
                                radius: _imagePreviewRadius,
                                backgroundImage: FileImage(_image!),
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(),
                const SizedBox(
                  height: 10,
                ),
                previewImages().isNotEmpty
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Column(
                          children: [
                            // upload and delete button

                            BlocBuilder<ImageCubit, ImageState>(
                              builder: (context, state) {
                                return BMButton(
                                  isLoading: state.status == Status.loading,
                                  text: "Confirm Upload",
                                  color: Theme.of(context).colorScheme.primary,
                                  onPressed: () async {
                                    if (_image == null) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content:
                                              Text('Please select an image'),
                                          duration: Duration(seconds: 2),
                                        ),
                                      );
                                      return;
                                    }
                                    final imageUrl =
                                        await imageCubit.uploadImages();
                                    widget.onImageUploaded(imageUrl);
                                  },
                                );
                              },
                            ),

                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      )
                    : Container(),
                isNotChanged
                    ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.1),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton.icon(
                              onPressed: () {
                                _imageFromCamera();
                              },
                              icon: const Icon(Icons.camera),
                              label: const Text('Camera'),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            TextButton.icon(
                              onPressed: () {
                                _imageFromGallery();
                              },
                              icon: const Icon(Icons.image),
                              label: const Text('Gallery'),
                            ),
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: BMButton(
                          text: "Change",
                          color: Theme.of(context).colorScheme.error,
                          outlined: true,
                          onPressed: () {
                            setState(() {
                              isNotChanged = !isNotChanged;
                            });
                          },
                        ),
                      ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
