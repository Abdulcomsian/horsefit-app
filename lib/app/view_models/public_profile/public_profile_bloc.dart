import '../../../core/constants/exports.dart';

part 'public_profile_event.dart';
part 'public_profile_state.dart';
part 'public_profile_bloc.freezed.dart';

class PublicProfileBloc extends Bloc<PublicProfileEvent, PublicProfileState> {
  PublicProfileBloc() : super(const PublicProfileState.publicProfileState()) {
    on<ChangeProfileStatus>(_changeProfileStatus);
    on<OnFollow>(_onFollow);
  }

  FutureOr<void> _changeProfileStatus(
      ChangeProfileStatus event, Emitter<PublicProfileState> emit) {
    emit(state.copyWith(profileStats: event.profileStats));
  }

  FutureOr<void> _onFollow(OnFollow event, Emitter<PublicProfileState> emit) {
    emit(state.copyWith(isFollow: !state.isFollow));
  }
}
