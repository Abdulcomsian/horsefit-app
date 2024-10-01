// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_horse_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddHorseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HorseActivityEnum horseActivity) horseActivity,
    required TResult Function(HorseGenderEnum horseGender) horseGender,
    required TResult Function(HorseTypeEnum horseType) horseType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HorseActivityEnum horseActivity)? horseActivity,
    TResult? Function(HorseGenderEnum horseGender)? horseGender,
    TResult? Function(HorseTypeEnum horseType)? horseType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HorseActivityEnum horseActivity)? horseActivity,
    TResult Function(HorseGenderEnum horseGender)? horseGender,
    TResult Function(HorseTypeEnum horseType)? horseType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HorseActivity value) horseActivity,
    required TResult Function(HorseGender value) horseGender,
    required TResult Function(HorseType value) horseType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HorseActivity value)? horseActivity,
    TResult? Function(HorseGender value)? horseGender,
    TResult? Function(HorseType value)? horseType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HorseActivity value)? horseActivity,
    TResult Function(HorseGender value)? horseGender,
    TResult Function(HorseType value)? horseType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddHorseEventCopyWith<$Res> {
  factory $AddHorseEventCopyWith(
          AddHorseEvent value, $Res Function(AddHorseEvent) then) =
      _$AddHorseEventCopyWithImpl<$Res, AddHorseEvent>;
}

/// @nodoc
class _$AddHorseEventCopyWithImpl<$Res, $Val extends AddHorseEvent>
    implements $AddHorseEventCopyWith<$Res> {
  _$AddHorseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddHorseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HorseActivityImplCopyWith<$Res> {
  factory _$$HorseActivityImplCopyWith(
          _$HorseActivityImpl value, $Res Function(_$HorseActivityImpl) then) =
      __$$HorseActivityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HorseActivityEnum horseActivity});
}

/// @nodoc
class __$$HorseActivityImplCopyWithImpl<$Res>
    extends _$AddHorseEventCopyWithImpl<$Res, _$HorseActivityImpl>
    implements _$$HorseActivityImplCopyWith<$Res> {
  __$$HorseActivityImplCopyWithImpl(
      _$HorseActivityImpl _value, $Res Function(_$HorseActivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddHorseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? horseActivity = null,
  }) {
    return _then(_$HorseActivityImpl(
      horseActivity: null == horseActivity
          ? _value.horseActivity
          : horseActivity // ignore: cast_nullable_to_non_nullable
              as HorseActivityEnum,
    ));
  }
}

/// @nodoc

class _$HorseActivityImpl implements HorseActivity {
  const _$HorseActivityImpl({required this.horseActivity});

  @override
  final HorseActivityEnum horseActivity;

  @override
  String toString() {
    return 'AddHorseEvent.horseActivity(horseActivity: $horseActivity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HorseActivityImpl &&
            (identical(other.horseActivity, horseActivity) ||
                other.horseActivity == horseActivity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, horseActivity);

  /// Create a copy of AddHorseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HorseActivityImplCopyWith<_$HorseActivityImpl> get copyWith =>
      __$$HorseActivityImplCopyWithImpl<_$HorseActivityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HorseActivityEnum horseActivity) horseActivity,
    required TResult Function(HorseGenderEnum horseGender) horseGender,
    required TResult Function(HorseTypeEnum horseType) horseType,
  }) {
    return horseActivity(this.horseActivity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HorseActivityEnum horseActivity)? horseActivity,
    TResult? Function(HorseGenderEnum horseGender)? horseGender,
    TResult? Function(HorseTypeEnum horseType)? horseType,
  }) {
    return horseActivity?.call(this.horseActivity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HorseActivityEnum horseActivity)? horseActivity,
    TResult Function(HorseGenderEnum horseGender)? horseGender,
    TResult Function(HorseTypeEnum horseType)? horseType,
    required TResult orElse(),
  }) {
    if (horseActivity != null) {
      return horseActivity(this.horseActivity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HorseActivity value) horseActivity,
    required TResult Function(HorseGender value) horseGender,
    required TResult Function(HorseType value) horseType,
  }) {
    return horseActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HorseActivity value)? horseActivity,
    TResult? Function(HorseGender value)? horseGender,
    TResult? Function(HorseType value)? horseType,
  }) {
    return horseActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HorseActivity value)? horseActivity,
    TResult Function(HorseGender value)? horseGender,
    TResult Function(HorseType value)? horseType,
    required TResult orElse(),
  }) {
    if (horseActivity != null) {
      return horseActivity(this);
    }
    return orElse();
  }
}

abstract class HorseActivity implements AddHorseEvent {
  const factory HorseActivity(
      {required final HorseActivityEnum horseActivity}) = _$HorseActivityImpl;

  HorseActivityEnum get horseActivity;

  /// Create a copy of AddHorseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HorseActivityImplCopyWith<_$HorseActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HorseGenderImplCopyWith<$Res> {
  factory _$$HorseGenderImplCopyWith(
          _$HorseGenderImpl value, $Res Function(_$HorseGenderImpl) then) =
      __$$HorseGenderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HorseGenderEnum horseGender});
}

/// @nodoc
class __$$HorseGenderImplCopyWithImpl<$Res>
    extends _$AddHorseEventCopyWithImpl<$Res, _$HorseGenderImpl>
    implements _$$HorseGenderImplCopyWith<$Res> {
  __$$HorseGenderImplCopyWithImpl(
      _$HorseGenderImpl _value, $Res Function(_$HorseGenderImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddHorseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? horseGender = null,
  }) {
    return _then(_$HorseGenderImpl(
      horseGender: null == horseGender
          ? _value.horseGender
          : horseGender // ignore: cast_nullable_to_non_nullable
              as HorseGenderEnum,
    ));
  }
}

/// @nodoc

class _$HorseGenderImpl implements HorseGender {
  const _$HorseGenderImpl({required this.horseGender});

  @override
  final HorseGenderEnum horseGender;

  @override
  String toString() {
    return 'AddHorseEvent.horseGender(horseGender: $horseGender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HorseGenderImpl &&
            (identical(other.horseGender, horseGender) ||
                other.horseGender == horseGender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, horseGender);

  /// Create a copy of AddHorseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HorseGenderImplCopyWith<_$HorseGenderImpl> get copyWith =>
      __$$HorseGenderImplCopyWithImpl<_$HorseGenderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HorseActivityEnum horseActivity) horseActivity,
    required TResult Function(HorseGenderEnum horseGender) horseGender,
    required TResult Function(HorseTypeEnum horseType) horseType,
  }) {
    return horseGender(this.horseGender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HorseActivityEnum horseActivity)? horseActivity,
    TResult? Function(HorseGenderEnum horseGender)? horseGender,
    TResult? Function(HorseTypeEnum horseType)? horseType,
  }) {
    return horseGender?.call(this.horseGender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HorseActivityEnum horseActivity)? horseActivity,
    TResult Function(HorseGenderEnum horseGender)? horseGender,
    TResult Function(HorseTypeEnum horseType)? horseType,
    required TResult orElse(),
  }) {
    if (horseGender != null) {
      return horseGender(this.horseGender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HorseActivity value) horseActivity,
    required TResult Function(HorseGender value) horseGender,
    required TResult Function(HorseType value) horseType,
  }) {
    return horseGender(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HorseActivity value)? horseActivity,
    TResult? Function(HorseGender value)? horseGender,
    TResult? Function(HorseType value)? horseType,
  }) {
    return horseGender?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HorseActivity value)? horseActivity,
    TResult Function(HorseGender value)? horseGender,
    TResult Function(HorseType value)? horseType,
    required TResult orElse(),
  }) {
    if (horseGender != null) {
      return horseGender(this);
    }
    return orElse();
  }
}

abstract class HorseGender implements AddHorseEvent {
  const factory HorseGender({required final HorseGenderEnum horseGender}) =
      _$HorseGenderImpl;

  HorseGenderEnum get horseGender;

  /// Create a copy of AddHorseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HorseGenderImplCopyWith<_$HorseGenderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HorseTypeImplCopyWith<$Res> {
  factory _$$HorseTypeImplCopyWith(
          _$HorseTypeImpl value, $Res Function(_$HorseTypeImpl) then) =
      __$$HorseTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HorseTypeEnum horseType});
}

/// @nodoc
class __$$HorseTypeImplCopyWithImpl<$Res>
    extends _$AddHorseEventCopyWithImpl<$Res, _$HorseTypeImpl>
    implements _$$HorseTypeImplCopyWith<$Res> {
  __$$HorseTypeImplCopyWithImpl(
      _$HorseTypeImpl _value, $Res Function(_$HorseTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddHorseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? horseType = null,
  }) {
    return _then(_$HorseTypeImpl(
      horseType: null == horseType
          ? _value.horseType
          : horseType // ignore: cast_nullable_to_non_nullable
              as HorseTypeEnum,
    ));
  }
}

/// @nodoc

class _$HorseTypeImpl implements HorseType {
  const _$HorseTypeImpl({required this.horseType});

  @override
  final HorseTypeEnum horseType;

  @override
  String toString() {
    return 'AddHorseEvent.horseType(horseType: $horseType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HorseTypeImpl &&
            (identical(other.horseType, horseType) ||
                other.horseType == horseType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, horseType);

  /// Create a copy of AddHorseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HorseTypeImplCopyWith<_$HorseTypeImpl> get copyWith =>
      __$$HorseTypeImplCopyWithImpl<_$HorseTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HorseActivityEnum horseActivity) horseActivity,
    required TResult Function(HorseGenderEnum horseGender) horseGender,
    required TResult Function(HorseTypeEnum horseType) horseType,
  }) {
    return horseType(this.horseType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HorseActivityEnum horseActivity)? horseActivity,
    TResult? Function(HorseGenderEnum horseGender)? horseGender,
    TResult? Function(HorseTypeEnum horseType)? horseType,
  }) {
    return horseType?.call(this.horseType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HorseActivityEnum horseActivity)? horseActivity,
    TResult Function(HorseGenderEnum horseGender)? horseGender,
    TResult Function(HorseTypeEnum horseType)? horseType,
    required TResult orElse(),
  }) {
    if (horseType != null) {
      return horseType(this.horseType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HorseActivity value) horseActivity,
    required TResult Function(HorseGender value) horseGender,
    required TResult Function(HorseType value) horseType,
  }) {
    return horseType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HorseActivity value)? horseActivity,
    TResult? Function(HorseGender value)? horseGender,
    TResult? Function(HorseType value)? horseType,
  }) {
    return horseType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HorseActivity value)? horseActivity,
    TResult Function(HorseGender value)? horseGender,
    TResult Function(HorseType value)? horseType,
    required TResult orElse(),
  }) {
    if (horseType != null) {
      return horseType(this);
    }
    return orElse();
  }
}

abstract class HorseType implements AddHorseEvent {
  const factory HorseType({required final HorseTypeEnum horseType}) =
      _$HorseTypeImpl;

  HorseTypeEnum get horseType;

  /// Create a copy of AddHorseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HorseTypeImplCopyWith<_$HorseTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddHorseState {
  HorseActivityEnum get horseActivity => throw _privateConstructorUsedError;
  HorseGenderEnum get horseGender => throw _privateConstructorUsedError;
  HorseTypeEnum get horseType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HorseActivityEnum horseActivity,
            HorseGenderEnum horseGender, HorseTypeEnum horseType)
        addHorseState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HorseActivityEnum horseActivity,
            HorseGenderEnum horseGender, HorseTypeEnum horseType)?
        addHorseState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HorseActivityEnum horseActivity,
            HorseGenderEnum horseGender, HorseTypeEnum horseType)?
        addHorseState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddHorseState value) addHorseState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddHorseState value)? addHorseState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddHorseState value)? addHorseState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AddHorseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddHorseStateCopyWith<AddHorseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddHorseStateCopyWith<$Res> {
  factory $AddHorseStateCopyWith(
          AddHorseState value, $Res Function(AddHorseState) then) =
      _$AddHorseStateCopyWithImpl<$Res, AddHorseState>;
  @useResult
  $Res call(
      {HorseActivityEnum horseActivity,
      HorseGenderEnum horseGender,
      HorseTypeEnum horseType});
}

/// @nodoc
class _$AddHorseStateCopyWithImpl<$Res, $Val extends AddHorseState>
    implements $AddHorseStateCopyWith<$Res> {
  _$AddHorseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddHorseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? horseActivity = null,
    Object? horseGender = null,
    Object? horseType = null,
  }) {
    return _then(_value.copyWith(
      horseActivity: null == horseActivity
          ? _value.horseActivity
          : horseActivity // ignore: cast_nullable_to_non_nullable
              as HorseActivityEnum,
      horseGender: null == horseGender
          ? _value.horseGender
          : horseGender // ignore: cast_nullable_to_non_nullable
              as HorseGenderEnum,
      horseType: null == horseType
          ? _value.horseType
          : horseType // ignore: cast_nullable_to_non_nullable
              as HorseTypeEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddHorseStateImplCopyWith<$Res>
    implements $AddHorseStateCopyWith<$Res> {
  factory _$$AddHorseStateImplCopyWith(
          _$AddHorseStateImpl value, $Res Function(_$AddHorseStateImpl) then) =
      __$$AddHorseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HorseActivityEnum horseActivity,
      HorseGenderEnum horseGender,
      HorseTypeEnum horseType});
}

/// @nodoc
class __$$AddHorseStateImplCopyWithImpl<$Res>
    extends _$AddHorseStateCopyWithImpl<$Res, _$AddHorseStateImpl>
    implements _$$AddHorseStateImplCopyWith<$Res> {
  __$$AddHorseStateImplCopyWithImpl(
      _$AddHorseStateImpl _value, $Res Function(_$AddHorseStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddHorseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? horseActivity = null,
    Object? horseGender = null,
    Object? horseType = null,
  }) {
    return _then(_$AddHorseStateImpl(
      horseActivity: null == horseActivity
          ? _value.horseActivity
          : horseActivity // ignore: cast_nullable_to_non_nullable
              as HorseActivityEnum,
      horseGender: null == horseGender
          ? _value.horseGender
          : horseGender // ignore: cast_nullable_to_non_nullable
              as HorseGenderEnum,
      horseType: null == horseType
          ? _value.horseType
          : horseType // ignore: cast_nullable_to_non_nullable
              as HorseTypeEnum,
    ));
  }
}

/// @nodoc

class _$AddHorseStateImpl implements _AddHorseState {
  const _$AddHorseStateImpl(
      {this.horseActivity = HorseActivityEnum.trotting,
      this.horseGender = HorseGenderEnum.mare,
      this.horseType = HorseTypeEnum.warmBlooded});

  @override
  @JsonKey()
  final HorseActivityEnum horseActivity;
  @override
  @JsonKey()
  final HorseGenderEnum horseGender;
  @override
  @JsonKey()
  final HorseTypeEnum horseType;

  @override
  String toString() {
    return 'AddHorseState.addHorseState(horseActivity: $horseActivity, horseGender: $horseGender, horseType: $horseType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddHorseStateImpl &&
            (identical(other.horseActivity, horseActivity) ||
                other.horseActivity == horseActivity) &&
            (identical(other.horseGender, horseGender) ||
                other.horseGender == horseGender) &&
            (identical(other.horseType, horseType) ||
                other.horseType == horseType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, horseActivity, horseGender, horseType);

  /// Create a copy of AddHorseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddHorseStateImplCopyWith<_$AddHorseStateImpl> get copyWith =>
      __$$AddHorseStateImplCopyWithImpl<_$AddHorseStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HorseActivityEnum horseActivity,
            HorseGenderEnum horseGender, HorseTypeEnum horseType)
        addHorseState,
  }) {
    return addHorseState(horseActivity, horseGender, horseType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HorseActivityEnum horseActivity,
            HorseGenderEnum horseGender, HorseTypeEnum horseType)?
        addHorseState,
  }) {
    return addHorseState?.call(horseActivity, horseGender, horseType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HorseActivityEnum horseActivity,
            HorseGenderEnum horseGender, HorseTypeEnum horseType)?
        addHorseState,
    required TResult orElse(),
  }) {
    if (addHorseState != null) {
      return addHorseState(horseActivity, horseGender, horseType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddHorseState value) addHorseState,
  }) {
    return addHorseState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddHorseState value)? addHorseState,
  }) {
    return addHorseState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddHorseState value)? addHorseState,
    required TResult orElse(),
  }) {
    if (addHorseState != null) {
      return addHorseState(this);
    }
    return orElse();
  }
}

abstract class _AddHorseState implements AddHorseState {
  const factory _AddHorseState(
      {final HorseActivityEnum horseActivity,
      final HorseGenderEnum horseGender,
      final HorseTypeEnum horseType}) = _$AddHorseStateImpl;

  @override
  HorseActivityEnum get horseActivity;
  @override
  HorseGenderEnum get horseGender;
  @override
  HorseTypeEnum get horseType;

  /// Create a copy of AddHorseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddHorseStateImplCopyWith<_$AddHorseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
