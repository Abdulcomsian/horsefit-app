// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InternetConnectivityState {
  NetworkStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkStatus status) internetConnectivityState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkStatus status)? internetConnectivityState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkStatus status)? internetConnectivityState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternetConnectivityState value)
        internetConnectivityState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternetConnectivityState value)?
        internetConnectivityState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternetConnectivityState value)?
        internetConnectivityState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of InternetConnectivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternetConnectivityStateCopyWith<InternetConnectivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetConnectivityStateCopyWith<$Res> {
  factory $InternetConnectivityStateCopyWith(InternetConnectivityState value,
          $Res Function(InternetConnectivityState) then) =
      _$InternetConnectivityStateCopyWithImpl<$Res, InternetConnectivityState>;
  @useResult
  $Res call({NetworkStatus status});
}

/// @nodoc
class _$InternetConnectivityStateCopyWithImpl<$Res,
        $Val extends InternetConnectivityState>
    implements $InternetConnectivityStateCopyWith<$Res> {
  _$InternetConnectivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternetConnectivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InternetConnectivityStateImplCopyWith<$Res>
    implements $InternetConnectivityStateCopyWith<$Res> {
  factory _$$InternetConnectivityStateImplCopyWith(
          _$InternetConnectivityStateImpl value,
          $Res Function(_$InternetConnectivityStateImpl) then) =
      __$$InternetConnectivityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NetworkStatus status});
}

/// @nodoc
class __$$InternetConnectivityStateImplCopyWithImpl<$Res>
    extends _$InternetConnectivityStateCopyWithImpl<$Res,
        _$InternetConnectivityStateImpl>
    implements _$$InternetConnectivityStateImplCopyWith<$Res> {
  __$$InternetConnectivityStateImplCopyWithImpl(
      _$InternetConnectivityStateImpl _value,
      $Res Function(_$InternetConnectivityStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetConnectivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$InternetConnectivityStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
    ));
  }
}

/// @nodoc

class _$InternetConnectivityStateImpl implements _InternetConnectivityState {
  const _$InternetConnectivityStateImpl({this.status = NetworkStatus.online});

  @override
  @JsonKey()
  final NetworkStatus status;

  @override
  String toString() {
    return 'InternetConnectivityState.internetConnectivityState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternetConnectivityStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of InternetConnectivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternetConnectivityStateImplCopyWith<_$InternetConnectivityStateImpl>
      get copyWith => __$$InternetConnectivityStateImplCopyWithImpl<
          _$InternetConnectivityStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkStatus status) internetConnectivityState,
  }) {
    return internetConnectivityState(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkStatus status)? internetConnectivityState,
  }) {
    return internetConnectivityState?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkStatus status)? internetConnectivityState,
    required TResult orElse(),
  }) {
    if (internetConnectivityState != null) {
      return internetConnectivityState(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternetConnectivityState value)
        internetConnectivityState,
  }) {
    return internetConnectivityState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternetConnectivityState value)?
        internetConnectivityState,
  }) {
    return internetConnectivityState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternetConnectivityState value)?
        internetConnectivityState,
    required TResult orElse(),
  }) {
    if (internetConnectivityState != null) {
      return internetConnectivityState(this);
    }
    return orElse();
  }
}

abstract class _InternetConnectivityState implements InternetConnectivityState {
  const factory _InternetConnectivityState({final NetworkStatus status}) =
      _$InternetConnectivityStateImpl;

  @override
  NetworkStatus get status;

  /// Create a copy of InternetConnectivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternetConnectivityStateImplCopyWith<_$InternetConnectivityStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InternetConnectivityEvent {
  NetworkStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkStatus status) networkStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkStatus status)? networkStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkStatus status)? networkStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkStatusChanged value) networkStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkStatusChanged value)? networkStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkStatusChanged value)? networkStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of InternetConnectivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternetConnectivityEventCopyWith<InternetConnectivityEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetConnectivityEventCopyWith<$Res> {
  factory $InternetConnectivityEventCopyWith(InternetConnectivityEvent value,
          $Res Function(InternetConnectivityEvent) then) =
      _$InternetConnectivityEventCopyWithImpl<$Res, InternetConnectivityEvent>;
  @useResult
  $Res call({NetworkStatus status});
}

/// @nodoc
class _$InternetConnectivityEventCopyWithImpl<$Res,
        $Val extends InternetConnectivityEvent>
    implements $InternetConnectivityEventCopyWith<$Res> {
  _$InternetConnectivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternetConnectivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkStatusChangedImplCopyWith<$Res>
    implements $InternetConnectivityEventCopyWith<$Res> {
  factory _$$NetworkStatusChangedImplCopyWith(_$NetworkStatusChangedImpl value,
          $Res Function(_$NetworkStatusChangedImpl) then) =
      __$$NetworkStatusChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NetworkStatus status});
}

/// @nodoc
class __$$NetworkStatusChangedImplCopyWithImpl<$Res>
    extends _$InternetConnectivityEventCopyWithImpl<$Res,
        _$NetworkStatusChangedImpl>
    implements _$$NetworkStatusChangedImplCopyWith<$Res> {
  __$$NetworkStatusChangedImplCopyWithImpl(_$NetworkStatusChangedImpl _value,
      $Res Function(_$NetworkStatusChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetConnectivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$NetworkStatusChangedImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
    ));
  }
}

/// @nodoc

class _$NetworkStatusChangedImpl implements NetworkStatusChanged {
  const _$NetworkStatusChangedImpl({required this.status});

  @override
  final NetworkStatus status;

  @override
  String toString() {
    return 'InternetConnectivityEvent.networkStatusChanged(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkStatusChangedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of InternetConnectivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkStatusChangedImplCopyWith<_$NetworkStatusChangedImpl>
      get copyWith =>
          __$$NetworkStatusChangedImplCopyWithImpl<_$NetworkStatusChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkStatus status) networkStatusChanged,
  }) {
    return networkStatusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkStatus status)? networkStatusChanged,
  }) {
    return networkStatusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkStatus status)? networkStatusChanged,
    required TResult orElse(),
  }) {
    if (networkStatusChanged != null) {
      return networkStatusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkStatusChanged value) networkStatusChanged,
  }) {
    return networkStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkStatusChanged value)? networkStatusChanged,
  }) {
    return networkStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkStatusChanged value)? networkStatusChanged,
    required TResult orElse(),
  }) {
    if (networkStatusChanged != null) {
      return networkStatusChanged(this);
    }
    return orElse();
  }
}

abstract class NetworkStatusChanged implements InternetConnectivityEvent {
  const factory NetworkStatusChanged({required final NetworkStatus status}) =
      _$NetworkStatusChangedImpl;

  @override
  NetworkStatus get status;

  /// Create a copy of InternetConnectivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkStatusChangedImplCopyWith<_$NetworkStatusChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
