import '../../../core/constants/exports.dart';

part 'add_horse_event.dart';
part 'add_horse_state.dart';
part 'add_horse_bloc.freezed.dart';

class AddHorseBloc extends Bloc<AddHorseEvent, AddHorseState> {
  AddHorseBloc() : super(const AddHorseState.addHorseState()) {
    on<HorseActivity>(_horseActivity);
    on<HorseGender>(_horseGender);
    on<HorseType>(_horseType);
  }

  void _horseActivity(HorseActivity event, Emitter<AddHorseState> emit) {
    emit(state.copyWith(horseActivity: event.horseActivity));
  }

  void _horseGender(HorseGender event, Emitter<AddHorseState> emit) {
    emit(state.copyWith(horseGender: event.horseGender));
  }

  void _horseType(HorseType event, Emitter<AddHorseState> emit) {
    emit(state.copyWith(horseType: event.horseType));
  }
}
