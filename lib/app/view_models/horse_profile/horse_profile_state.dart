part of 'horse_profile_bloc.dart';

@freezed
class HorseProfileState with _$HorseProfileState {
  const factory HorseProfileState.horseProfileState({
    @Default(InitialRequestStatus()) RequestStatus status,
    @Default(false) bool isFollow,
  }) = _HorseProfileState;
}
