part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.signUpState({
    @Default(InitialRequestStatus()) RequestStatus status,
    String? profilePath,
    @Default(true) bool isPasswordVisible,
    @Default(true) bool isConfirmPasswordVisible,
    @Default(Gender.male) Gender gender,
    @Default(UserType.horseTrainer) UserType userType,
    @Default(false) bool isEditProfile,
  }) = _Initial;
}
