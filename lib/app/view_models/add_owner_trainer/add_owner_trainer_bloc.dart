import '../../../core/constants/exports.dart';

part 'add_owner_trainer_event.dart';
part 'add_owner_trainer_state.dart';
part 'add_owner_trainer_bloc.freezed.dart';

class AddOwnerTrainerBloc
    extends Bloc<AddOwnerTrainerEvent, AddOwnerTrainerState> {
  AddOwnerTrainerBloc()
      : super(const AddOwnerTrainerState.addOwnerTrainerState()) {
    on<SelectRole>(_selectRole);
  }

  FutureOr<void> _selectRole(
      SelectRole event, Emitter<AddOwnerTrainerState> emit) {
    emit(state.copyWith(role: event.role));
  }
}
