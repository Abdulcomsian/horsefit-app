import '../../../core/constants/exports.dart';

part 'horse_profile_event.dart';
part 'horse_profile_state.dart';
part 'horse_profile_bloc.freezed.dart';

class HorseProfileBloc extends Bloc<HorseProfileEvent, HorseProfileState> {
  HorseProfileBloc() : super(const HorseProfileState.horseProfileState()) {
    on<OnFollow>(_onFollow);
  }

  FutureOr<void> _onFollow(OnFollow event, Emitter<HorseProfileState> emit) {
    emit(state.copyWith(isFollow: !state.isFollow));
  }
}
