part of 'start_workout_bloc.dart';

@freezed
class StartWorkoutEvent with _$StartWorkoutEvent {
  const factory StartWorkoutEvent.workoutType(
      {required WorkoutTypeEnum workoutType}) = WorkoutType;
  const factory StartWorkoutEvent.terrainType(
      {required TerrainTypeEnum terrainType}) = TerrainType;
  const factory StartWorkoutEvent.workoutIntensity(
      {required WorkoutIntensityEnum workoutIntensity}) = WorkoutIntensity;
  const factory StartWorkoutEvent.startWorkout({bool? isRestart}) =
      StartWorkout;
  const factory StartWorkoutEvent.pauseWorkout() = PauseWorkout;
}
