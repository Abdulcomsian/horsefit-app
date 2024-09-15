part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loginState({
    @Default(InitialRequestStatus()) RequestStatus status,
    @Default(InitialRequestStatus()) RequestStatus socialAuthStatus,
    @Default(true) bool isPasswordVisible,
  }) = _LoginState;
}
