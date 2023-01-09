import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    required String uid,
    @JsonKey(name: 'image_url') required String imageUrl,
    required String role,
    required String email,
    required String name,
    required String phone,
    required String address,
    required String city,
    required String state,
    required String country,
    @JsonKey(name: 'is_subscribed') required bool isSubscribed,
  }) = _UserProfileModel;

  const UserProfileModel._();

  factory UserProfileModel.empty() => const UserProfileModel(
        uid: '',
        role: '',
        email: '',
        name: '',
        phone: '',
        address: '',
        city: '',
        state: '',
        country: '',
        imageUrl: '',
        isSubscribed: false,
      );

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}
