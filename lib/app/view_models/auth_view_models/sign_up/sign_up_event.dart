part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.togglePasswordVisibility() =
      TogglePasswordVisibility;
  const factory SignUpEvent.toggleConfirmPasswordVisibility() =
      ToggleConfirmPasswordVisibility;
  const factory SignUpEvent.toggleGender({required Gender gender}) =
      ToggleGender;
  const factory SignUpEvent.selectUser({required UserType userType}) =
      SelectUser;
  const factory SignUpEvent.createAccount() = CreateAccount;
  const factory SignUpEvent.toggleEditProfile() = ToggleEditProfile;
}
