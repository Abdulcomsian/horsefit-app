import '../../../../core/constants/exports.dart';

part 'lost_password_event.dart';
part 'lost_password_state.dart';
part 'lost_password_bloc.freezed.dart';

class LostPasswordBloc extends Bloc<LostPasswordEvent, LostPasswordState> {
  LostPasswordBloc() : super(const LostPasswordState.lostPasswordState()) {
    on<IsValidEmail>(_isValidEmail);
    on<SendPasswordResetEmail>(_sendPasswordResetEmail);
  }

  void _isValidEmail(IsValidEmail event, Emitter<LostPasswordState> emit) {
    final isValidEmail =
        locator<Validation>().validateEmail(event.email) == null;
    if (isValidEmail) {
      emit(state.copyWith(isValidEmail: isValidEmail));
    }
  }

  Future<void> _sendPasswordResetEmail(
      SendPasswordResetEmail event, Emitter<LostPasswordState> emit) async {
    emit(state.copyWith(status: LoadingRequestStatus()));
    await Future.delayed(const Duration(seconds: 3));
    emit(state.copyWith(status: const SuccessRequestStatus()));
  }
}
