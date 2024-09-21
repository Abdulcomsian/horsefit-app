import '../../../core/constants/exports.dart';

part 'create_post_event.dart';
part 'create_post_state.dart';
part 'create_post_bloc.freezed.dart';

class CreatePostBloc extends Bloc<CreatePostEvent, CreatePostState> {
  CreatePostBloc() : super(const CreatePostState.createPostState()) {
    on<IsValidPost>(_isValidPost);
    on<TogglePostPrivacy>(_togglePostPrivacy);
  }

  FutureOr<void> _isValidPost(
      IsValidPost event, Emitter<CreatePostState> emit) {
    final isValidPost = event.text.isNotEmpty ? true : false;
    emit(state.copyWith(isValidPost: isValidPost));
  }

  FutureOr<void> _togglePostPrivacy(
      TogglePostPrivacy event, Emitter<CreatePostState> emit) {
    emit(state.copyWith(postPrivacy: event.postPrivacy));
  }
}
