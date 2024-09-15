part of 'create_post_bloc.dart';

@freezed
class CreatePostEvent with _$CreatePostEvent {
  const factory CreatePostEvent.isValidPost({required String text}) =
      IsValidPost;
  const factory CreatePostEvent.togglePostPrivacy(
      {required PostPrivacy postPrivacy}) = TogglePostPrivacy;
}
