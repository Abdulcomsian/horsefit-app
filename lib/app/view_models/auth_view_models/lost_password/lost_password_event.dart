part of 'lost_password_bloc.dart';

@freezed
class LostPasswordEvent with _$LostPasswordEvent {
  const factory LostPasswordEvent.isValidEmail({required String email}) =
      IsValidEmail;
  const factory LostPasswordEvent.sendPasswordResetEmail(
      {required String email}) = SendPasswordResetEmail;
}
