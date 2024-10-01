part of 'start_workout_bloc.dart';

@freezed
class StartWorkoutState with _$StartWorkoutState {
  const factory StartWorkoutState.startWorkoutState({
    @Default(WorkoutTypeEnum.interval) WorkoutTypeEnum workoutType,
    @Default(TerrainTypeEnum.flatTerrain) TerrainTypeEnum terrainType,
    @Default(WorkoutIntensityEnum.recovery)
    WorkoutIntensityEnum workoutIntensity,
    @Default(false) bool isWorkoutStarted,
    @Default(false) bool isPaused,
    @Default(5) int countdown,
    @Default(false) bool timerFinished,
  }) = _StartWorkoutState;
}
