part of 'public_profile_bloc.dart';

@freezed
class PublicProfileEvent with _$PublicProfileEvent {
  const factory PublicProfileEvent.changeProfileStats(
      {required ProfileStatsEnum profileStats}) = ChangeProfileStatus;
  const factory PublicProfileEvent.onFollow() = OnFollow;
}
