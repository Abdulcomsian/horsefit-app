import '../../../core/constants/exports.dart';

part 'workout_log_event.dart';
part 'workout_log_state.dart';
part 'workout_log_bloc.freezed.dart';

class WorkoutLogBloc extends Bloc<WorkoutLogEvent, WorkoutLogState> {
  WorkoutLogBloc() : super(const WorkoutLogState.workoutLogState()) {
    on<SelectHorse>(_selectHorse);
  }

  FutureOr<void> _selectHorse(event, emit) {}
}
