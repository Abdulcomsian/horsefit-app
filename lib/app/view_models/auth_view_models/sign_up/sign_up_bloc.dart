import '../../../../core/constants/exports.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const SignUpState.signUpState()) {
    on<TogglePasswordVisibility>(_togglePasswordVisibility);
    on<ToggleConfirmPasswordVisibility>(_toggleConfirmPasswordVisibility);
    on<ToggleGender>(_toggleGender);
    on<SelectUser>(_selectUser);
    on<CreateAccount>(_createAccount);
  }

  FutureOr<void> _togglePasswordVisibility(
      TogglePasswordVisibility event, Emitter<SignUpState> emit) {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }

  FutureOr<void> _toggleConfirmPasswordVisibility(
      ToggleConfirmPasswordVisibility event, Emitter<SignUpState> emit) {
    emit(state.copyWith(
        isConfirmPasswordVisible: !state.isConfirmPasswordVisible));
  }

  FutureOr<void> _toggleGender(ToggleGender event, Emitter<SignUpState> emit) {
    emit(state.copyWith(gender: event.gender));
  }

  FutureOr<void> _selectUser(SelectUser event, Emitter<SignUpState> emit) {
    emit(state.copyWith(userType: event.userType));
  }

  Future<void> _createAccount(
      CreateAccount event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(status: const InitialRequestStatus()));
    await Future.delayed(const Duration(seconds: 3));
    emit(state.copyWith(status: const SuccessRequestStatus()));
  }
}
