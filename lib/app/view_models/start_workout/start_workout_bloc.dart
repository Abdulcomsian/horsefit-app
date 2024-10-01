import '../../../core/constants/exports.dart';

part 'start_workout_event.dart';
part 'start_workout_state.dart';
part 'start_workout_bloc.freezed.dart';

class StartWorkoutBloc extends Bloc<StartWorkoutEvent, StartWorkoutState> {
  StartWorkoutBloc() : super(const StartWorkoutState.startWorkoutState()) {
    on<WorkoutType>(_workoutType);
    on<TerrainType>(_terrainType);
    on<WorkoutIntensity>(_workoutIntensity);
    on<StartWorkout>(_startWorkout);
    on<PauseWorkout>(_pauseWorkout);
  }

  void _workoutType(WorkoutType event, Emitter<StartWorkoutState> emit) {
    emit(state.copyWith(workoutType: event.workoutType));
  }

  void _terrainType(TerrainType event, Emitter<StartWorkoutState> emit) {
    emit(state.copyWith(terrainType: event.terrainType));
  }

  void _workoutIntensity(
      WorkoutIntensity event, Emitter<StartWorkoutState> emit) {
    emit(state.copyWith(workoutIntensity: event.workoutIntensity));
  }

  void _startWorkout(StartWorkout event, Emitter<StartWorkoutState> emit) {
    if (event.isRestart != true) {
      emit(state.copyWith(isWorkoutStarted: true));
      Timer.periodic(const Duration(seconds: 1), (timer) {
        if (state.countdown == 0) {
          timer.cancel();
          emit(state.copyWith(timerFinished: true));
        } else {
          emit(state.copyWith(countdown: state.countdown - 1));
        }
      });
    } else {
      emit(state.copyWith(isPaused: false));
    }
  }

  FutureOr<void> _pauseWorkout(
      PauseWorkout event, Emitter<StartWorkoutState> emit) {
    emit(state.copyWith(isPaused: true));
  }
}
