part of 'public_profile_bloc.dart';

@freezed
class PublicProfileState with _$PublicProfileState {
  const factory PublicProfileState.publicProfileState({
    @Default(InitialRequestStatus()) RequestStatus status,
    @Default(ProfileStatsEnum.photos) ProfileStatsEnum profileStats,
    @Default(false) bool isFollow,
  }) = _PublicProfileState;
}
