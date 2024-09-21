part of 'start_workout_bloc.dart';

@freezed
class StartWorkoutEvent with _$StartWorkoutEvent {
  const factory StartWorkoutEvent.started() = _Started;
}
