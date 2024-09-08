part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.togglePasswordVisibility() =
      TogglePasswordVisibility;
  const factory LoginEvent.login() = Login;
  const factory LoginEvent.signInWithGoogle() = SignInWithGoogle;
  const factory LoginEvent.signInWithfacebook() = SignInWithFacebook;
  const factory LoginEvent.signInWithapple() = SignInWithApple;
}
