import '../../../../core/constants/exports.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.loginState()) {
    on<TogglePasswordVisibility>(_togglePasswordVisibility);
    on<Login>(_login);
    on<SignInWithGoogle>(_signInWithGoogle);
    on<SignInWithFacebook>(_signInWithFacebook);
    on<SignInWithApple>(_signInWithApple);
  }

  FutureOr<void> _togglePasswordVisibility(
      TogglePasswordVisibility event, Emitter<LoginState> emit) {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }

  Future<void> _login(Login event, Emitter<LoginState> emit) async {
    emit(state.copyWith(status: const InitialRequestStatus()));
    await Future.delayed(const Duration(seconds: 3));
    emit(state.copyWith(status: const SuccessRequestStatus()));
  }

  FutureOr<void> _signInWithGoogle(
      SignInWithGoogle event, Emitter<LoginState> emit) {}

  FutureOr<void> _signInWithFacebook(
      SignInWithFacebook event, Emitter<LoginState> emit) {}

  FutureOr<void> _signInWithApple(
      SignInWithApple event, Emitter<LoginState> emit) {}
}
