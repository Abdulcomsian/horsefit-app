import '../../../core/constants/exports.dart';

part 'start_workout_event.dart';
part 'start_workout_state.dart';
part 'start_workout_bloc.freezed.dart';

class StartWorkoutBloc extends Bloc<StartWorkoutEvent, StartWorkoutState> {
  StartWorkoutBloc() : super(const StartWorkoutState.startWorkoutState()) {
    on<StartWorkoutEvent>((event, emit) {});
  }
}
