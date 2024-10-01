part of 'add_horse_bloc.dart';

@freezed
class AddHorseEvent with _$AddHorseEvent {
  const factory AddHorseEvent.horseActivity(
      {required HorseActivityEnum horseActivity}) = HorseActivity;
  const factory AddHorseEvent.horseGender(
      {required HorseGenderEnum horseGender}) = HorseGender;
  const factory AddHorseEvent.horseType({required HorseTypeEnum horseType}) =
      HorseType;
}
