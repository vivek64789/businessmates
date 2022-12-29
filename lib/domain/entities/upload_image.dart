import 'package:equatable/equatable.dart';

class UploadImage extends Equatable {
  final List<String>? uploadedImages;
  final String? uploadedSingleImage;
  const UploadImage({
    this.uploadedImages,
    this.uploadedSingleImage,
  });

  static const empty = UploadImage(uploadedImages: [], uploadedSingleImage: '');

  bool get isEmpty => this == UploadImage.empty;
  bool get isNotEmpty => this != UploadImage.empty;

  @override
  get props => [uploadedImages, uploadedSingleImage];
}
