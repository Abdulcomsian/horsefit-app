part of 'add_owner_trainer_bloc.dart';

@freezed
class AddOwnerTrainerEvent with _$AddOwnerTrainerEvent {
  const factory AddOwnerTrainerEvent.selectRole({required RoleEnum role}) =
      SelectRole;
}
