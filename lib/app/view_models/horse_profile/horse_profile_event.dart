part of 'horse_profile_bloc.dart';

@freezed
class HorseProfileEvent with _$HorseProfileEvent {
  const factory HorseProfileEvent.onFollow() = OnFollow;
}
