part of 'add_horse_bloc.dart';

@freezed
class AddHorseEvent with _$AddHorseEvent {
  const factory AddHorseEvent.activity() = Activity;
  const factory AddHorseEvent.gender() = Gender;
  const factory AddHorseEvent.blooded() = Blooded;
}
