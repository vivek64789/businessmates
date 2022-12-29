part of 'image_cubit.dart';

enum Status {
  initial,
  loading,
  success,
  error,
}

class ImageState extends Equatable {
  final Status status;
  final List<File> localImages;
  final String uploadedImage;
  final String errorMessage;
  const ImageState({
    required this.status,
    required this.localImages,
    required this.uploadedImage,
    required this.errorMessage,
  });

  @override
  List<Object> get props => [status, localImages, uploadedImage];

  factory ImageState.initial() {
    return const ImageState(
        status: Status.initial,
        localImages: [],
        uploadedImage: "",
        errorMessage: '');
  }

  ImageState copyWith(
      {Status? status,
      List<File>? localImages,
      String? uploadedImage,
      String? errorMessage}) {
    return ImageState(
      localImages: localImages ?? this.localImages,
      uploadedImage: uploadedImage ?? this.uploadedImage,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
