part of 'add_owner_trainer_bloc.dart';

@freezed
class AddOwnerTrainerState with _$AddOwnerTrainerState {
  const factory AddOwnerTrainerState.addOwnerTrainerState({
    @Default(InitialRequestStatus()) RequestStatus status,
    @Default(RoleEnum.owner) RoleEnum role,
  }) = _AddOwnerTrainerState;
}
