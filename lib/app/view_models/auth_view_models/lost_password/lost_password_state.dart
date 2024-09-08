part of 'lost_password_bloc.dart';

@freezed
class LostPasswordState with _$LostPasswordState {
  const factory LostPasswordState.lostPasswordState({
    @Default(InitialRequestStatus()) RequestStatus status,
    @Default(false) bool isValidEmail,
  }) = _LostPasswordState;
}
