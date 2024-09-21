// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'horse_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HorseProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFollow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnFollow value) onFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnFollow value)? onFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnFollow value)? onFollow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HorseProfileEventCopyWith<$Res> {
  factory $HorseProfileEventCopyWith(
          HorseProfileEvent value, $Res Function(HorseProfileEvent) then) =
      _$HorseProfileEventCopyWithImpl<$Res, HorseProfileEvent>;
}

/// @nodoc
class _$HorseProfileEventCopyWithImpl<$Res, $Val extends HorseProfileEvent>
    implements $HorseProfileEventCopyWith<$Res> {
  _$HorseProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HorseProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnFollowImplCopyWith<$Res> {
  factory _$$OnFollowImplCopyWith(
          _$OnFollowImpl value, $Res Function(_$OnFollowImpl) then) =
      __$$OnFollowImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnFollowImplCopyWithImpl<$Res>
    extends _$HorseProfileEventCopyWithImpl<$Res, _$OnFollowImpl>
    implements _$$OnFollowImplCopyWith<$Res> {
  __$$OnFollowImplCopyWithImpl(
      _$OnFollowImpl _value, $Res Function(_$OnFollowImpl) _then)
      : super(_value, _then);

  /// Create a copy of HorseProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnFollowImpl implements OnFollow {
  const _$OnFollowImpl();

  @override
  String toString() {
    return 'HorseProfileEvent.onFollow()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnFollowImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFollow,
  }) {
    return onFollow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFollow,
  }) {
    return onFollow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFollow,
    required TResult orElse(),
  }) {
    if (onFollow != null) {
      return onFollow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnFollow value) onFollow,
  }) {
    return onFollow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnFollow value)? onFollow,
  }) {
    return onFollow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnFollow value)? onFollow,
    required TResult orElse(),
  }) {
    if (onFollow != null) {
      return onFollow(this);
    }
    return orElse();
  }
}

abstract class OnFollow implements HorseProfileEvent {
  const factory OnFollow() = _$OnFollowImpl;
}

/// @nodoc
mixin _$HorseProfileState {
  RequestStatus get status => throw _privateConstructorUsedError;
  bool get isFollow => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestStatus status, bool isFollow)
        horseProfileState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestStatus status, bool isFollow)? horseProfileState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestStatus status, bool isFollow)? horseProfileState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HorseProfileState value) horseProfileState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HorseProfileState value)? horseProfileState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HorseProfileState value)? horseProfileState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HorseProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HorseProfileStateCopyWith<HorseProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HorseProfileStateCopyWith<$Res> {
  factory $HorseProfileStateCopyWith(
          HorseProfileState value, $Res Function(HorseProfileState) then) =
      _$HorseProfileStateCopyWithImpl<$Res, HorseProfileState>;
  @useResult
  $Res call({RequestStatus status, bool isFollow});
}

/// @nodoc
class _$HorseProfileStateCopyWithImpl<$Res, $Val extends HorseProfileState>
    implements $HorseProfileStateCopyWith<$Res> {
  _$HorseProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HorseProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isFollow = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      isFollow: null == isFollow
          ? _value.isFollow
          : isFollow // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HorseProfileStateImplCopyWith<$Res>
    implements $HorseProfileStateCopyWith<$Res> {
  factory _$$HorseProfileStateImplCopyWith(_$HorseProfileStateImpl value,
          $Res Function(_$HorseProfileStateImpl) then) =
      __$$HorseProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestStatus status, bool isFollow});
}

/// @nodoc
class __$$HorseProfileStateImplCopyWithImpl<$Res>
    extends _$HorseProfileStateCopyWithImpl<$Res, _$HorseProfileStateImpl>
    implements _$$HorseProfileStateImplCopyWith<$Res> {
  __$$HorseProfileStateImplCopyWithImpl(_$HorseProfileStateImpl _value,
      $Res Function(_$HorseProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HorseProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isFollow = null,
  }) {
    return _then(_$HorseProfileStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      isFollow: null == isFollow
          ? _value.isFollow
          : isFollow // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HorseProfileStateImpl implements _HorseProfileState {
  const _$HorseProfileStateImpl(
      {this.status = const InitialRequestStatus(), this.isFollow = false});

  @override
  @JsonKey()
  final RequestStatus status;
  @override
  @JsonKey()
  final bool isFollow;

  @override
  String toString() {
    return 'HorseProfileState.horseProfileState(status: $status, isFollow: $isFollow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HorseProfileStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isFollow, isFollow) ||
                other.isFollow == isFollow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, isFollow);

  /// Create a copy of HorseProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HorseProfileStateImplCopyWith<_$HorseProfileStateImpl> get copyWith =>
      __$$HorseProfileStateImplCopyWithImpl<_$HorseProfileStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestStatus status, bool isFollow)
        horseProfileState,
  }) {
    return horseProfileState(status, isFollow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestStatus status, bool isFollow)? horseProfileState,
  }) {
    return horseProfileState?.call(status, isFollow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestStatus status, bool isFollow)? horseProfileState,
    required TResult orElse(),
  }) {
    if (horseProfileState != null) {
      return horseProfileState(status, isFollow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HorseProfileState value) horseProfileState,
  }) {
    return horseProfileState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HorseProfileState value)? horseProfileState,
  }) {
    return horseProfileState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HorseProfileState value)? horseProfileState,
    required TResult orElse(),
  }) {
    if (horseProfileState != null) {
      return horseProfileState(this);
    }
    return orElse();
  }
}

abstract class _HorseProfileState implements HorseProfileState {
  const factory _HorseProfileState(
      {final RequestStatus status,
      final bool isFollow}) = _$HorseProfileStateImpl;

  @override
  RequestStatus get status;
  @override
  bool get isFollow;

  /// Create a copy of HorseProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HorseProfileStateImplCopyWith<_$HorseProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
