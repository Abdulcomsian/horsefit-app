part of 'workout_log_bloc.dart';

@freezed
class WorkoutLogEvent with _$WorkoutLogEvent {
  const factory WorkoutLogEvent.selectHorse() = SelectHorse;
}
