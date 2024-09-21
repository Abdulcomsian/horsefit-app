import '../../../core/constants/exports.dart';

part 'add_horse_event.dart';
part 'add_horse_state.dart';
part 'add_horse_bloc.freezed.dart';

class AddHorseBloc extends Bloc<AddHorseEvent, AddHorseState> {
  AddHorseBloc() : super(const _Initial()) {
    on<AddHorseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
