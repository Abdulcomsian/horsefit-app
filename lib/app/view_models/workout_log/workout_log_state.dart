part of 'workout_log_bloc.dart';

@freezed
class WorkoutLogState with _$WorkoutLogState {
  const factory WorkoutLogState.workoutLogState({
    @Default(InitialRequestStatus()) RequestStatus status,
  }) = _WorkoutLogState;
}
