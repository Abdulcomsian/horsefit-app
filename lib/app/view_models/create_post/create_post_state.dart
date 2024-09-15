part of 'create_post_bloc.dart';

@freezed
class CreatePostState with _$CreatePostState {
  const factory CreatePostState.createPostState({
    @Default(InitialRequestStatus()) RequestStatus status,
    @Default(false) bool isValidPost,
    @Default(PostPrivacy.public) PostPrivacy postPrivacy,
  }) = _CreatePostState;
}
