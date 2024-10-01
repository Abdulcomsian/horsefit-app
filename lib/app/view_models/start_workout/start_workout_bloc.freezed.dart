// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_workout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StartWorkoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkoutTypeEnum workoutType) workoutType,
    required TResult Function(TerrainTypeEnum terrainType) terrainType,
    required TResult Function(WorkoutIntensityEnum workoutIntensity)
        workoutIntensity,
    required TResult Function(bool? isRestart) startWorkout,
    required TResult Function() pauseWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkoutTypeEnum workoutType)? workoutType,
    TResult? Function(TerrainTypeEnum terrainType)? terrainType,
    TResult? Function(WorkoutIntensityEnum workoutIntensity)? workoutIntensity,
    TResult? Function(bool? isRestart)? startWorkout,
    TResult? Function()? pauseWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkoutTypeEnum workoutType)? workoutType,
    TResult Function(TerrainTypeEnum terrainType)? terrainType,
    TResult Function(WorkoutIntensityEnum workoutIntensity)? workoutIntensity,
    TResult Function(bool? isRestart)? startWorkout,
    TResult Function()? pauseWorkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkoutType value) workoutType,
    required TResult Function(TerrainType value) terrainType,
    required TResult Function(WorkoutIntensity value) workoutIntensity,
    required TResult Function(StartWorkout value) startWorkout,
    required TResult Function(PauseWorkout value) pauseWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkoutType value)? workoutType,
    TResult? Function(TerrainType value)? terrainType,
    TResult? Function(WorkoutIntensity value)? workoutIntensity,
    TResult? Function(StartWorkout value)? startWorkout,
    TResult? Function(PauseWorkout value)? pauseWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkoutType value)? workoutType,
    TResult Function(TerrainType value)? terrainType,
    TResult Function(WorkoutIntensity value)? workoutIntensity,
    TResult Function(StartWorkout value)? startWorkout,
    TResult Function(PauseWorkout value)? pauseWorkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartWorkoutEventCopyWith<$Res> {
  factory $StartWorkoutEventCopyWith(
          StartWorkoutEvent value, $Res Function(StartWorkoutEvent) then) =
      _$StartWorkoutEventCopyWithImpl<$Res, StartWorkoutEvent>;
}

/// @nodoc
class _$StartWorkoutEventCopyWithImpl<$Res, $Val extends StartWorkoutEvent>
    implements $StartWorkoutEventCopyWith<$Res> {
  _$StartWorkoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartWorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WorkoutTypeImplCopyWith<$Res> {
  factory _$$WorkoutTypeImplCopyWith(
          _$WorkoutTypeImpl value, $Res Function(_$WorkoutTypeImpl) then) =
      __$$WorkoutTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkoutTypeEnum workoutType});
}

/// @nodoc
class __$$WorkoutTypeImplCopyWithImpl<$Res>
    extends _$StartWorkoutEventCopyWithImpl<$Res, _$WorkoutTypeImpl>
    implements _$$WorkoutTypeImplCopyWith<$Res> {
  __$$WorkoutTypeImplCopyWithImpl(
      _$WorkoutTypeImpl _value, $Res Function(_$WorkoutTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartWorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutType = null,
  }) {
    return _then(_$WorkoutTypeImpl(
      workoutType: null == workoutType
          ? _value.workoutType
          : workoutType // ignore: cast_nullable_to_non_nullable
              as WorkoutTypeEnum,
    ));
  }
}

/// @nodoc

class _$WorkoutTypeImpl implements WorkoutType {
  const _$WorkoutTypeImpl({required this.workoutType});

  @override
  final WorkoutTypeEnum workoutType;

  @override
  String toString() {
    return 'StartWorkoutEvent.workoutType(workoutType: $workoutType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutTypeImpl &&
            (identical(other.workoutType, workoutType) ||
                other.workoutType == workoutType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workoutType);

  /// Create a copy of StartWorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutTypeImplCopyWith<_$WorkoutTypeImpl> get copyWith =>
      __$$WorkoutTypeImplCopyWithImpl<_$WorkoutTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkoutTypeEnum workoutType) workoutType,
    required TResult Function(TerrainTypeEnum terrainType) terrainType,
    required TResult Function(WorkoutIntensityEnum workoutIntensity)
        workoutIntensity,
    required TResult Function(bool? isRestart) startWorkout,
    required TResult Function() pauseWorkout,
  }) {
    return workoutType(this.workoutType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkoutTypeEnum workoutType)? workoutType,
    TResult? Function(TerrainTypeEnum terrainType)? terrainType,
    TResult? Function(WorkoutIntensityEnum workoutIntensity)? workoutIntensity,
    TResult? Function(bool? isRestart)? startWorkout,
    TResult? Function()? pauseWorkout,
  }) {
    return workoutType?.call(this.workoutType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkoutTypeEnum workoutType)? workoutType,
    TResult Function(TerrainTypeEnum terrainType)? terrainType,
    TResult Function(WorkoutIntensityEnum workoutIntensity)? workoutIntensity,
    TResult Function(bool? isRestart)? startWorkout,
    TResult Function()? pauseWorkout,
    required TResult orElse(),
  }) {
    if (workoutType != null) {
      return workoutType(this.workoutType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkoutType value) workoutType,
    required TResult Function(TerrainType value) terrainType,
    required TResult Function(WorkoutIntensity value) workoutIntensity,
    required TResult Function(StartWorkout value) startWorkout,
    required TResult Function(PauseWorkout value) pauseWorkout,
  }) {
    return workoutType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkoutType value)? workoutType,
    TResult? Function(TerrainType value)? terrainType,
    TResult? Function(WorkoutIntensity value)? workoutIntensity,
    TResult? Function(StartWorkout value)? startWorkout,
    TResult? Function(PauseWorkout value)? pauseWorkout,
  }) {
    return workoutType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkoutType value)? workoutType,
    TResult Function(TerrainType value)? terrainType,
    TResult Function(WorkoutIntensity value)? workoutIntensity,
    TResult Function(StartWorkout value)? startWorkout,
    TResult Function(PauseWorkout value)? pauseWorkout,
    required TResult orElse(),
  }) {
    if (workoutType != null) {
      return workoutType(this);
    }
    return orElse();
  }
}

abstract class WorkoutType implements StartWorkoutEvent {
  const factory WorkoutType({required final WorkoutTypeEnum workoutType}) =
      _$WorkoutTypeImpl;

  WorkoutTypeEnum get workoutType;

  /// Create a copy of StartWorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutTypeImplCopyWith<_$WorkoutTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TerrainTypeImplCopyWith<$Res> {
  factory _$$TerrainTypeImplCopyWith(
          _$TerrainTypeImpl value, $Res Function(_$TerrainTypeImpl) then) =
      __$$TerrainTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TerrainTypeEnum terrainType});
}

/// @nodoc
class __$$TerrainTypeImplCopyWithImpl<$Res>
    extends _$StartWorkoutEventCopyWithImpl<$Res, _$TerrainTypeImpl>
    implements _$$TerrainTypeImplCopyWith<$Res> {
  __$$TerrainTypeImplCopyWithImpl(
      _$TerrainTypeImpl _value, $Res Function(_$TerrainTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartWorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terrainType = null,
  }) {
    return _then(_$TerrainTypeImpl(
      terrainType: null == terrainType
          ? _value.terrainType
          : terrainType // ignore: cast_nullable_to_non_nullable
              as TerrainTypeEnum,
    ));
  }
}

/// @nodoc

class _$TerrainTypeImpl implements TerrainType {
  const _$TerrainTypeImpl({required this.terrainType});

  @override
  final TerrainTypeEnum terrainType;

  @override
  String toString() {
    return 'StartWorkoutEvent.terrainType(terrainType: $terrainType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TerrainTypeImpl &&
            (identical(other.terrainType, terrainType) ||
                other.terrainType == terrainType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, terrainType);

  /// Create a copy of StartWorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TerrainTypeImplCopyWith<_$TerrainTypeImpl> get copyWith =>
      __$$TerrainTypeImplCopyWithImpl<_$TerrainTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkoutTypeEnum workoutType) workoutType,
    required TResult Function(TerrainTypeEnum terrainType) terrainType,
    required TResult Function(WorkoutIntensityEnum workoutIntensity)
        workoutIntensity,
    required TResult Function(bool? isRestart) startWorkout,
    required TResult Function() pauseWorkout,
  }) {
    return terrainType(this.terrainType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkoutTypeEnum workoutType)? workoutType,
    TResult? Function(TerrainTypeEnum terrainType)? terrainType,
    TResult? Function(WorkoutIntensityEnum workoutIntensity)? workoutIntensity,
    TResult? Function(bool? isRestart)? startWorkout,
    TResult? Function()? pauseWorkout,
  }) {
    return terrainType?.call(this.terrainType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkoutTypeEnum workoutType)? workoutType,
    TResult Function(TerrainTypeEnum terrainType)? terrainType,
    TResult Function(WorkoutIntensityEnum workoutIntensity)? workoutIntensity,
    TResult Function(bool? isRestart)? startWorkout,
    TResult Function()? pauseWorkout,
    required TResult orElse(),
  }) {
    if (terrainType != null) {
      return terrainType(this.terrainType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkoutType value) workoutType,
    required TResult Function(TerrainType value) terrainType,
    required TResult Function(WorkoutIntensity value) workoutIntensity,
    required TResult Function(StartWorkout value) startWorkout,
    required TResult Function(PauseWorkout value) pauseWorkout,
  }) {
    return terrainType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkoutType value)? workoutType,
    TResult? Function(TerrainType value)? terrainType,
    TResult? Function(WorkoutIntensity value)? workoutIntensity,
    TResult? Function(StartWorkout value)? startWorkout,
    TResult? Function(PauseWorkout value)? pauseWorkout,
  }) {
    return terrainType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkoutType value)? workoutType,
    TResult Function(TerrainType value)? terrainType,
    TResult Function(WorkoutIntensity value)? workoutIntensity,
    TResult Function(StartWorkout value)? startWorkout,
    TResult Function(PauseWorkout value)? pauseWorkout,
    required TResult orElse(),
  }) {
    if (terrainType != null) {
      return terrainType(this);
    }
    return orElse();
  }
}

abstract class TerrainType implements StartWorkoutEvent {
  const factory TerrainType({required final TerrainTypeEnum terrainType}) =
      _$TerrainTypeImpl;

  TerrainTypeEnum get terrainType;

  /// Create a copy of StartWorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TerrainTypeImplCopyWith<_$TerrainTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WorkoutIntensityImplCopyWith<$Res> {
  factory _$$WorkoutIntensityImplCopyWith(_$WorkoutIntensityImpl value,
          $Res Function(_$WorkoutIntensityImpl) then) =
      __$$WorkoutIntensityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkoutIntensityEnum workoutIntensity});
}

/// @nodoc
class __$$WorkoutIntensityImplCopyWithImpl<$Res>
    extends _$StartWorkoutEventCopyWithImpl<$Res, _$WorkoutIntensityImpl>
    implements _$$WorkoutIntensityImplCopyWith<$Res> {
  __$$WorkoutIntensityImplCopyWithImpl(_$WorkoutIntensityImpl _value,
      $Res Function(_$WorkoutIntensityImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartWorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutIntensity = null,
  }) {
    return _then(_$WorkoutIntensityImpl(
      workoutIntensity: null == workoutIntensity
          ? _value.workoutIntensity
          : workoutIntensity // ignore: cast_nullable_to_non_nullable
              as WorkoutIntensityEnum,
    ));
  }
}

/// @nodoc

class _$WorkoutIntensityImpl implements WorkoutIntensity {
  const _$WorkoutIntensityImpl({required this.workoutIntensity});

  @override
  final WorkoutIntensityEnum workoutIntensity;

  @override
  String toString() {
    return 'StartWorkoutEvent.workoutIntensity(workoutIntensity: $workoutIntensity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutIntensityImpl &&
            (identical(other.workoutIntensity, workoutIntensity) ||
                other.workoutIntensity == workoutIntensity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workoutIntensity);

  /// Create a copy of StartWorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutIntensityImplCopyWith<_$WorkoutIntensityImpl> get copyWith =>
      __$$WorkoutIntensityImplCopyWithImpl<_$WorkoutIntensityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkoutTypeEnum workoutType) workoutType,
    required TResult Function(TerrainTypeEnum terrainType) terrainType,
    required TResult Function(WorkoutIntensityEnum workoutIntensity)
        workoutIntensity,
    required TResult Function(bool? isRestart) startWorkout,
    required TResult Function() pauseWorkout,
  }) {
    return workoutIntensity(this.workoutIntensity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkoutTypeEnum workoutType)? workoutType,
    TResult? Function(TerrainTypeEnum terrainType)? terrainType,
    TResult? Function(WorkoutIntensityEnum workoutIntensity)? workoutIntensity,
    TResult? Function(bool? isRestart)? startWorkout,
    TResult? Function()? pauseWorkout,
  }) {
    return workoutIntensity?.call(this.workoutIntensity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkoutTypeEnum workoutType)? workoutType,
    TResult Function(TerrainTypeEnum terrainType)? terrainType,
    TResult Function(WorkoutIntensityEnum workoutIntensity)? workoutIntensity,
    TResult Function(bool? isRestart)? startWorkout,
    TResult Function()? pauseWorkout,
    required TResult orElse(),
  }) {
    if (workoutIntensity != null) {
      return workoutIntensity(this.workoutIntensity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkoutType value) workoutType,
    required TResult Function(TerrainType value) terrainType,
    required TResult Function(WorkoutIntensity value) workoutIntensity,
    required TResult Function(StartWorkout value) startWorkout,
    required TResult Function(PauseWorkout value) pauseWorkout,
  }) {
    return workoutIntensity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkoutType value)? workoutType,
    TResult? Function(TerrainType value)? terrainType,
    TResult? Function(WorkoutIntensity value)? workoutIntensity,
    TResult? Function(StartWorkout value)? startWorkout,
    TResult? Function(PauseWorkout value)? pauseWorkout,
  }) {
    return workoutIntensity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkoutType value)? workoutType,
    TResult Function(TerrainType value)? terrainType,
    TResult Function(WorkoutIntensity value)? workoutIntensity,
    TResult Function(StartWorkout value)? startWorkout,
    TResult Function(PauseWorkout value)? pauseWorkout,
    required TResult orElse(),
  }) {
    if (workoutIntensity != null) {
      return workoutIntensity(this);
    }
    return orElse();
  }
}

abstract class WorkoutIntensity implements StartWorkoutEvent {
  const factory WorkoutIntensity(
          {required final WorkoutIntensityEnum workoutIntensity}) =
      _$WorkoutIntensityImpl;

  WorkoutIntensityEnum get workoutIntensity;

  /// Create a copy of StartWorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutIntensityImplCopyWith<_$WorkoutIntensityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartWorkoutImplCopyWith<$Res> {
  factory _$$StartWorkoutImplCopyWith(
          _$StartWorkoutImpl value, $Res Function(_$StartWorkoutImpl) then) =
      __$$StartWorkoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? isRestart});
}

/// @nodoc
class __$$StartWorkoutImplCopyWithImpl<$Res>
    extends _$StartWorkoutEventCopyWithImpl<$Res, _$StartWorkoutImpl>
    implements _$$StartWorkoutImplCopyWith<$Res> {
  __$$StartWorkoutImplCopyWithImpl(
      _$StartWorkoutImpl _value, $Res Function(_$StartWorkoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartWorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRestart = freezed,
  }) {
    return _then(_$StartWorkoutImpl(
      isRestart: freezed == isRestart
          ? _value.isRestart
          : isRestart // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$StartWorkoutImpl implements StartWorkout {
  const _$StartWorkoutImpl({this.isRestart});

  @override
  final bool? isRestart;

  @override
  String toString() {
    return 'StartWorkoutEvent.startWorkout(isRestart: $isRestart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartWorkoutImpl &&
            (identical(other.isRestart, isRestart) ||
                other.isRestart == isRestart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRestart);

  /// Create a copy of StartWorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartWorkoutImplCopyWith<_$StartWorkoutImpl> get copyWith =>
      __$$StartWorkoutImplCopyWithImpl<_$StartWorkoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkoutTypeEnum workoutType) workoutType,
    required TResult Function(TerrainTypeEnum terrainType) terrainType,
    required TResult Function(WorkoutIntensityEnum workoutIntensity)
        workoutIntensity,
    required TResult Function(bool? isRestart) startWorkout,
    required TResult Function() pauseWorkout,
  }) {
    return startWorkout(isRestart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkoutTypeEnum workoutType)? workoutType,
    TResult? Function(TerrainTypeEnum terrainType)? terrainType,
    TResult? Function(WorkoutIntensityEnum workoutIntensity)? workoutIntensity,
    TResult? Function(bool? isRestart)? startWorkout,
    TResult? Function()? pauseWorkout,
  }) {
    return startWorkout?.call(isRestart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkoutTypeEnum workoutType)? workoutType,
    TResult Function(TerrainTypeEnum terrainType)? terrainType,
    TResult Function(WorkoutIntensityEnum workoutIntensity)? workoutIntensity,
    TResult Function(bool? isRestart)? startWorkout,
    TResult Function()? pauseWorkout,
    required TResult orElse(),
  }) {
    if (startWorkout != null) {
      return startWorkout(isRestart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkoutType value) workoutType,
    required TResult Function(TerrainType value) terrainType,
    required TResult Function(WorkoutIntensity value) workoutIntensity,
    required TResult Function(StartWorkout value) startWorkout,
    required TResult Function(PauseWorkout value) pauseWorkout,
  }) {
    return startWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkoutType value)? workoutType,
    TResult? Function(TerrainType value)? terrainType,
    TResult? Function(WorkoutIntensity value)? workoutIntensity,
    TResult? Function(StartWorkout value)? startWorkout,
    TResult? Function(PauseWorkout value)? pauseWorkout,
  }) {
    return startWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkoutType value)? workoutType,
    TResult Function(TerrainType value)? terrainType,
    TResult Function(WorkoutIntensity value)? workoutIntensity,
    TResult Function(StartWorkout value)? startWorkout,
    TResult Function(PauseWorkout value)? pauseWorkout,
    required TResult orElse(),
  }) {
    if (startWorkout != null) {
      return startWorkout(this);
    }
    return orElse();
  }
}

abstract class StartWorkout implements StartWorkoutEvent {
  const factory StartWorkout({final bool? isRestart}) = _$StartWorkoutImpl;

  bool? get isRestart;

  /// Create a copy of StartWorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartWorkoutImplCopyWith<_$StartWorkoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PauseWorkoutImplCopyWith<$Res> {
  factory _$$PauseWorkoutImplCopyWith(
          _$PauseWorkoutImpl value, $Res Function(_$PauseWorkoutImpl) then) =
      __$$PauseWorkoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseWorkoutImplCopyWithImpl<$Res>
    extends _$StartWorkoutEventCopyWithImpl<$Res, _$PauseWorkoutImpl>
    implements _$$PauseWorkoutImplCopyWith<$Res> {
  __$$PauseWorkoutImplCopyWithImpl(
      _$PauseWorkoutImpl _value, $Res Function(_$PauseWorkoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartWorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PauseWorkoutImpl implements PauseWorkout {
  const _$PauseWorkoutImpl();

  @override
  String toString() {
    return 'StartWorkoutEvent.pauseWorkout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseWorkoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkoutTypeEnum workoutType) workoutType,
    required TResult Function(TerrainTypeEnum terrainType) terrainType,
    required TResult Function(WorkoutIntensityEnum workoutIntensity)
        workoutIntensity,
    required TResult Function(bool? isRestart) startWorkout,
    required TResult Function() pauseWorkout,
  }) {
    return pauseWorkout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkoutTypeEnum workoutType)? workoutType,
    TResult? Function(TerrainTypeEnum terrainType)? terrainType,
    TResult? Function(WorkoutIntensityEnum workoutIntensity)? workoutIntensity,
    TResult? Function(bool? isRestart)? startWorkout,
    TResult? Function()? pauseWorkout,
  }) {
    return pauseWorkout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkoutTypeEnum workoutType)? workoutType,
    TResult Function(TerrainTypeEnum terrainType)? terrainType,
    TResult Function(WorkoutIntensityEnum workoutIntensity)? workoutIntensity,
    TResult Function(bool? isRestart)? startWorkout,
    TResult Function()? pauseWorkout,
    required TResult orElse(),
  }) {
    if (pauseWorkout != null) {
      return pauseWorkout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkoutType value) workoutType,
    required TResult Function(TerrainType value) terrainType,
    required TResult Function(WorkoutIntensity value) workoutIntensity,
    required TResult Function(StartWorkout value) startWorkout,
    required TResult Function(PauseWorkout value) pauseWorkout,
  }) {
    return pauseWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkoutType value)? workoutType,
    TResult? Function(TerrainType value)? terrainType,
    TResult? Function(WorkoutIntensity value)? workoutIntensity,
    TResult? Function(StartWorkout value)? startWorkout,
    TResult? Function(PauseWorkout value)? pauseWorkout,
  }) {
    return pauseWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkoutType value)? workoutType,
    TResult Function(TerrainType value)? terrainType,
    TResult Function(WorkoutIntensity value)? workoutIntensity,
    TResult Function(StartWorkout value)? startWorkout,
    TResult Function(PauseWorkout value)? pauseWorkout,
    required TResult orElse(),
  }) {
    if (pauseWorkout != null) {
      return pauseWorkout(this);
    }
    return orElse();
  }
}

abstract class PauseWorkout implements StartWorkoutEvent {
  const factory PauseWorkout() = _$PauseWorkoutImpl;
}

/// @nodoc
mixin _$StartWorkoutState {
  WorkoutTypeEnum get workoutType => throw _privateConstructorUsedError;
  TerrainTypeEnum get terrainType => throw _privateConstructorUsedError;
  WorkoutIntensityEnum get workoutIntensity =>
      throw _privateConstructorUsedError;
  bool get isWorkoutStarted => throw _privateConstructorUsedError;
  bool get isPaused => throw _privateConstructorUsedError;
  int get countdown => throw _privateConstructorUsedError;
  bool get timerFinished => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WorkoutTypeEnum workoutType,
            TerrainTypeEnum terrainType,
            WorkoutIntensityEnum workoutIntensity,
            bool isWorkoutStarted,
            bool isPaused,
            int countdown,
            bool timerFinished)
        startWorkoutState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            WorkoutTypeEnum workoutType,
            TerrainTypeEnum terrainType,
            WorkoutIntensityEnum workoutIntensity,
            bool isWorkoutStarted,
            bool isPaused,
            int countdown,
            bool timerFinished)?
        startWorkoutState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            WorkoutTypeEnum workoutType,
            TerrainTypeEnum terrainType,
            WorkoutIntensityEnum workoutIntensity,
            bool isWorkoutStarted,
            bool isPaused,
            int countdown,
            bool timerFinished)?
        startWorkoutState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartWorkoutState value) startWorkoutState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartWorkoutState value)? startWorkoutState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartWorkoutState value)? startWorkoutState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of StartWorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StartWorkoutStateCopyWith<StartWorkoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartWorkoutStateCopyWith<$Res> {
  factory $StartWorkoutStateCopyWith(
          StartWorkoutState value, $Res Function(StartWorkoutState) then) =
      _$StartWorkoutStateCopyWithImpl<$Res, StartWorkoutState>;
  @useResult
  $Res call(
      {WorkoutTypeEnum workoutType,
      TerrainTypeEnum terrainType,
      WorkoutIntensityEnum workoutIntensity,
      bool isWorkoutStarted,
      bool isPaused,
      int countdown,
      bool timerFinished});
}

/// @nodoc
class _$StartWorkoutStateCopyWithImpl<$Res, $Val extends StartWorkoutState>
    implements $StartWorkoutStateCopyWith<$Res> {
  _$StartWorkoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartWorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutType = null,
    Object? terrainType = null,
    Object? workoutIntensity = null,
    Object? isWorkoutStarted = null,
    Object? isPaused = null,
    Object? countdown = null,
    Object? timerFinished = null,
  }) {
    return _then(_value.copyWith(
      workoutType: null == workoutType
          ? _value.workoutType
          : workoutType // ignore: cast_nullable_to_non_nullable
              as WorkoutTypeEnum,
      terrainType: null == terrainType
          ? _value.terrainType
          : terrainType // ignore: cast_nullable_to_non_nullable
              as TerrainTypeEnum,
      workoutIntensity: null == workoutIntensity
          ? _value.workoutIntensity
          : workoutIntensity // ignore: cast_nullable_to_non_nullable
              as WorkoutIntensityEnum,
      isWorkoutStarted: null == isWorkoutStarted
          ? _value.isWorkoutStarted
          : isWorkoutStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaused: null == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
      countdown: null == countdown
          ? _value.countdown
          : countdown // ignore: cast_nullable_to_non_nullable
              as int,
      timerFinished: null == timerFinished
          ? _value.timerFinished
          : timerFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartWorkoutStateImplCopyWith<$Res>
    implements $StartWorkoutStateCopyWith<$Res> {
  factory _$$StartWorkoutStateImplCopyWith(_$StartWorkoutStateImpl value,
          $Res Function(_$StartWorkoutStateImpl) then) =
      __$$StartWorkoutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WorkoutTypeEnum workoutType,
      TerrainTypeEnum terrainType,
      WorkoutIntensityEnum workoutIntensity,
      bool isWorkoutStarted,
      bool isPaused,
      int countdown,
      bool timerFinished});
}

/// @nodoc
class __$$StartWorkoutStateImplCopyWithImpl<$Res>
    extends _$StartWorkoutStateCopyWithImpl<$Res, _$StartWorkoutStateImpl>
    implements _$$StartWorkoutStateImplCopyWith<$Res> {
  __$$StartWorkoutStateImplCopyWithImpl(_$StartWorkoutStateImpl _value,
      $Res Function(_$StartWorkoutStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartWorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutType = null,
    Object? terrainType = null,
    Object? workoutIntensity = null,
    Object? isWorkoutStarted = null,
    Object? isPaused = null,
    Object? countdown = null,
    Object? timerFinished = null,
  }) {
    return _then(_$StartWorkoutStateImpl(
      workoutType: null == workoutType
          ? _value.workoutType
          : workoutType // ignore: cast_nullable_to_non_nullable
              as WorkoutTypeEnum,
      terrainType: null == terrainType
          ? _value.terrainType
          : terrainType // ignore: cast_nullable_to_non_nullable
              as TerrainTypeEnum,
      workoutIntensity: null == workoutIntensity
          ? _value.workoutIntensity
          : workoutIntensity // ignore: cast_nullable_to_non_nullable
              as WorkoutIntensityEnum,
      isWorkoutStarted: null == isWorkoutStarted
          ? _value.isWorkoutStarted
          : isWorkoutStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaused: null == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
      countdown: null == countdown
          ? _value.countdown
          : countdown // ignore: cast_nullable_to_non_nullable
              as int,
      timerFinished: null == timerFinished
          ? _value.timerFinished
          : timerFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartWorkoutStateImpl implements _StartWorkoutState {
  const _$StartWorkoutStateImpl(
      {this.workoutType = WorkoutTypeEnum.interval,
      this.terrainType = TerrainTypeEnum.flatTerrain,
      this.workoutIntensity = WorkoutIntensityEnum.recovery,
      this.isWorkoutStarted = false,
      this.isPaused = false,
      this.countdown = 5,
      this.timerFinished = false});

  @override
  @JsonKey()
  final WorkoutTypeEnum workoutType;
  @override
  @JsonKey()
  final TerrainTypeEnum terrainType;
  @override
  @JsonKey()
  final WorkoutIntensityEnum workoutIntensity;
  @override
  @JsonKey()
  final bool isWorkoutStarted;
  @override
  @JsonKey()
  final bool isPaused;
  @override
  @JsonKey()
  final int countdown;
  @override
  @JsonKey()
  final bool timerFinished;

  @override
  String toString() {
    return 'StartWorkoutState.startWorkoutState(workoutType: $workoutType, terrainType: $terrainType, workoutIntensity: $workoutIntensity, isWorkoutStarted: $isWorkoutStarted, isPaused: $isPaused, countdown: $countdown, timerFinished: $timerFinished)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartWorkoutStateImpl &&
            (identical(other.workoutType, workoutType) ||
                other.workoutType == workoutType) &&
            (identical(other.terrainType, terrainType) ||
                other.terrainType == terrainType) &&
            (identical(other.workoutIntensity, workoutIntensity) ||
                other.workoutIntensity == workoutIntensity) &&
            (identical(other.isWorkoutStarted, isWorkoutStarted) ||
                other.isWorkoutStarted == isWorkoutStarted) &&
            (identical(other.isPaused, isPaused) ||
                other.isPaused == isPaused) &&
            (identical(other.countdown, countdown) ||
                other.countdown == countdown) &&
            (identical(other.timerFinished, timerFinished) ||
                other.timerFinished == timerFinished));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workoutType, terrainType,
      workoutIntensity, isWorkoutStarted, isPaused, countdown, timerFinished);

  /// Create a copy of StartWorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartWorkoutStateImplCopyWith<_$StartWorkoutStateImpl> get copyWith =>
      __$$StartWorkoutStateImplCopyWithImpl<_$StartWorkoutStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WorkoutTypeEnum workoutType,
            TerrainTypeEnum terrainType,
            WorkoutIntensityEnum workoutIntensity,
            bool isWorkoutStarted,
            bool isPaused,
            int countdown,
            bool timerFinished)
        startWorkoutState,
  }) {
    return startWorkoutState(workoutType, terrainType, workoutIntensity,
        isWorkoutStarted, isPaused, countdown, timerFinished);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            WorkoutTypeEnum workoutType,
            TerrainTypeEnum terrainType,
            WorkoutIntensityEnum workoutIntensity,
            bool isWorkoutStarted,
            bool isPaused,
            int countdown,
            bool timerFinished)?
        startWorkoutState,
  }) {
    return startWorkoutState?.call(workoutType, terrainType, workoutIntensity,
        isWorkoutStarted, isPaused, countdown, timerFinished);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            WorkoutTypeEnum workoutType,
            TerrainTypeEnum terrainType,
            WorkoutIntensityEnum workoutIntensity,
            bool isWorkoutStarted,
            bool isPaused,
            int countdown,
            bool timerFinished)?
        startWorkoutState,
    required TResult orElse(),
  }) {
    if (startWorkoutState != null) {
      return startWorkoutState(workoutType, terrainType, workoutIntensity,
          isWorkoutStarted, isPaused, countdown, timerFinished);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartWorkoutState value) startWorkoutState,
  }) {
    return startWorkoutState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartWorkoutState value)? startWorkoutState,
  }) {
    return startWorkoutState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartWorkoutState value)? startWorkoutState,
    required TResult orElse(),
  }) {
    if (startWorkoutState != null) {
      return startWorkoutState(this);
    }
    return orElse();
  }
}

abstract class _StartWorkoutState implements StartWorkoutState {
  const factory _StartWorkoutState(
      {final WorkoutTypeEnum workoutType,
      final TerrainTypeEnum terrainType,
      final WorkoutIntensityEnum workoutIntensity,
      final bool isWorkoutStarted,
      final bool isPaused,
      final int countdown,
      final bool timerFinished}) = _$StartWorkoutStateImpl;

  @override
  WorkoutTypeEnum get workoutType;
  @override
  TerrainTypeEnum get terrainType;
  @override
  WorkoutIntensityEnum get workoutIntensity;
  @override
  bool get isWorkoutStarted;
  @override
  bool get isPaused;
  @override
  int get countdown;
  @override
  bool get timerFinished;

  /// Create a copy of StartWorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartWorkoutStateImplCopyWith<_$StartWorkoutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
