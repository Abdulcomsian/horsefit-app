import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_horse_event.dart';
part 'add_horse_state.dart';
part 'add_horse_bloc.freezed.dart';

class AddHorseBloc extends Bloc<AddHorseEvent, AddHorseState> {
  AddHorseBloc() : super(_Initial()) {
    on<AddHorseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
