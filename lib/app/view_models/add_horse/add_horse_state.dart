part of 'add_horse_bloc.dart';

@freezed
class AddHorseState with _$AddHorseState {
  const factory AddHorseState.addHorseState({
    @Default(HorseActivityEnum.trotting) HorseActivityEnum horseActivity,
    @Default(HorseGenderEnum.mare) HorseGenderEnum horseGender,
    @Default(HorseTypeEnum.warmBlooded) HorseTypeEnum horseType,
  }) = _AddHorseState;
}
