// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PublicProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileStatsEnum profileStats) changeProfileStats,
    required TResult Function() onFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStatsEnum profileStats)? changeProfileStats,
    TResult? Function()? onFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStatsEnum profileStats)? changeProfileStats,
    TResult Function()? onFollow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeProfileStatus value) changeProfileStats,
    required TResult Function(OnFollow value) onFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeProfileStatus value)? changeProfileStats,
    TResult? Function(OnFollow value)? onFollow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeProfileStatus value)? changeProfileStats,
    TResult Function(OnFollow value)? onFollow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicProfileEventCopyWith<$Res> {
  factory $PublicProfileEventCopyWith(
          PublicProfileEvent value, $Res Function(PublicProfileEvent) then) =
      _$PublicProfileEventCopyWithImpl<$Res, PublicProfileEvent>;
}

/// @nodoc
class _$PublicProfileEventCopyWithImpl<$Res, $Val extends PublicProfileEvent>
    implements $PublicProfileEventCopyWith<$Res> {
  _$PublicProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeProfileStatusImplCopyWith<$Res> {
  factory _$$ChangeProfileStatusImplCopyWith(_$ChangeProfileStatusImpl value,
          $Res Function(_$ChangeProfileStatusImpl) then) =
      __$$ChangeProfileStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileStatsEnum profileStats});
}

/// @nodoc
class __$$ChangeProfileStatusImplCopyWithImpl<$Res>
    extends _$PublicProfileEventCopyWithImpl<$Res, _$ChangeProfileStatusImpl>
    implements _$$ChangeProfileStatusImplCopyWith<$Res> {
  __$$ChangeProfileStatusImplCopyWithImpl(_$ChangeProfileStatusImpl _value,
      $Res Function(_$ChangeProfileStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileStats = null,
  }) {
    return _then(_$ChangeProfileStatusImpl(
      profileStats: null == profileStats
          ? _value.profileStats
          : profileStats // ignore: cast_nullable_to_non_nullable
              as ProfileStatsEnum,
    ));
  }
}

/// @nodoc

class _$ChangeProfileStatusImpl implements ChangeProfileStatus {
  const _$ChangeProfileStatusImpl({required this.profileStats});

  @override
  final ProfileStatsEnum profileStats;

  @override
  String toString() {
    return 'PublicProfileEvent.changeProfileStats(profileStats: $profileStats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeProfileStatusImpl &&
            (identical(other.profileStats, profileStats) ||
                other.profileStats == profileStats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileStats);

  /// Create a copy of PublicProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeProfileStatusImplCopyWith<_$ChangeProfileStatusImpl> get copyWith =>
      __$$ChangeProfileStatusImplCopyWithImpl<_$ChangeProfileStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProfileStatsEnum profileStats) changeProfileStats,
    required TResult Function() onFollow,
  }) {
    return changeProfileStats(profileStats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStatsEnum profileStats)? changeProfileStats,
    TResult? Function()? onFollow,
  }) {
    return changeProfileStats?.call(profileStats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStatsEnum profileStats)? changeProfileStats,
    TResult Function()? onFollow,
    required TResult orElse(),
  }) {
    if (changeProfileStats != null) {
      return changeProfileStats(profileStats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeProfileStatus value) changeProfileStats,
    required TResult Function(OnFollow value) onFollow,
  }) {
    return changeProfileStats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeProfileStatus value)? changeProfileStats,
    TResult? Function(OnFollow value)? onFollow,
  }) {
    return changeProfileStats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeProfileStatus value)? changeProfileStats,
    TResult Function(OnFollow value)? onFollow,
    required TResult orElse(),
  }) {
    if (changeProfileStats != null) {
      return changeProfileStats(this);
    }
    return orElse();
  }
}

abstract class ChangeProfileStatus implements PublicProfileEvent {
  const factory ChangeProfileStatus(
          {required final ProfileStatsEnum profileStats}) =
      _$ChangeProfileStatusImpl;

  ProfileStatsEnum get profileStats;

  /// Create a copy of PublicProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeProfileStatusImplCopyWith<_$ChangeProfileStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnFollowImplCopyWith<$Res> {
  factory _$$OnFollowImplCopyWith(
          _$OnFollowImpl value, $Res Function(_$OnFollowImpl) then) =
      __$$OnFollowImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnFollowImplCopyWithImpl<$Res>
    extends _$PublicProfileEventCopyWithImpl<$Res, _$OnFollowImpl>
    implements _$$OnFollowImplCopyWith<$Res> {
  __$$OnFollowImplCopyWithImpl(
      _$OnFollowImpl _value, $Res Function(_$OnFollowImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnFollowImpl implements OnFollow {
  const _$OnFollowImpl();

  @override
  String toString() {
    return 'PublicProfileEvent.onFollow()';
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
    required TResult Function(ProfileStatsEnum profileStats) changeProfileStats,
    required TResult Function() onFollow,
  }) {
    return onFollow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProfileStatsEnum profileStats)? changeProfileStats,
    TResult? Function()? onFollow,
  }) {
    return onFollow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProfileStatsEnum profileStats)? changeProfileStats,
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
    required TResult Function(ChangeProfileStatus value) changeProfileStats,
    required TResult Function(OnFollow value) onFollow,
  }) {
    return onFollow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeProfileStatus value)? changeProfileStats,
    TResult? Function(OnFollow value)? onFollow,
  }) {
    return onFollow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeProfileStatus value)? changeProfileStats,
    TResult Function(OnFollow value)? onFollow,
    required TResult orElse(),
  }) {
    if (onFollow != null) {
      return onFollow(this);
    }
    return orElse();
  }
}

abstract class OnFollow implements PublicProfileEvent {
  const factory OnFollow() = _$OnFollowImpl;
}

/// @nodoc
mixin _$PublicProfileState {
  RequestStatus get status => throw _privateConstructorUsedError;
  ProfileStatsEnum get profileStats => throw _privateConstructorUsedError;
  bool get isFollow => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestStatus status, ProfileStatsEnum profileStats, bool isFollow)
        publicProfileState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestStatus status, ProfileStatsEnum profileStats, bool isFollow)?
        publicProfileState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestStatus status, ProfileStatsEnum profileStats, bool isFollow)?
        publicProfileState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PublicProfileState value) publicProfileState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PublicProfileState value)? publicProfileState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PublicProfileState value)? publicProfileState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PublicProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublicProfileStateCopyWith<PublicProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicProfileStateCopyWith<$Res> {
  factory $PublicProfileStateCopyWith(
          PublicProfileState value, $Res Function(PublicProfileState) then) =
      _$PublicProfileStateCopyWithImpl<$Res, PublicProfileState>;
  @useResult
  $Res call(
      {RequestStatus status, ProfileStatsEnum profileStats, bool isFollow});
}

/// @nodoc
class _$PublicProfileStateCopyWithImpl<$Res, $Val extends PublicProfileState>
    implements $PublicProfileStateCopyWith<$Res> {
  _$PublicProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? profileStats = null,
    Object? isFollow = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      profileStats: null == profileStats
          ? _value.profileStats
          : profileStats // ignore: cast_nullable_to_non_nullable
              as ProfileStatsEnum,
      isFollow: null == isFollow
          ? _value.isFollow
          : isFollow // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublicProfileStateImplCopyWith<$Res>
    implements $PublicProfileStateCopyWith<$Res> {
  factory _$$PublicProfileStateImplCopyWith(_$PublicProfileStateImpl value,
          $Res Function(_$PublicProfileStateImpl) then) =
      __$$PublicProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus status, ProfileStatsEnum profileStats, bool isFollow});
}

/// @nodoc
class __$$PublicProfileStateImplCopyWithImpl<$Res>
    extends _$PublicProfileStateCopyWithImpl<$Res, _$PublicProfileStateImpl>
    implements _$$PublicProfileStateImplCopyWith<$Res> {
  __$$PublicProfileStateImplCopyWithImpl(_$PublicProfileStateImpl _value,
      $Res Function(_$PublicProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? profileStats = null,
    Object? isFollow = null,
  }) {
    return _then(_$PublicProfileStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      profileStats: null == profileStats
          ? _value.profileStats
          : profileStats // ignore: cast_nullable_to_non_nullable
              as ProfileStatsEnum,
      isFollow: null == isFollow
          ? _value.isFollow
          : isFollow // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PublicProfileStateImpl implements _PublicProfileState {
  const _$PublicProfileStateImpl(
      {this.status = const InitialRequestStatus(),
      this.profileStats = ProfileStatsEnum.photos,
      this.isFollow = false});

  @override
  @JsonKey()
  final RequestStatus status;
  @override
  @JsonKey()
  final ProfileStatsEnum profileStats;
  @override
  @JsonKey()
  final bool isFollow;

  @override
  String toString() {
    return 'PublicProfileState.publicProfileState(status: $status, profileStats: $profileStats, isFollow: $isFollow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProfileStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.profileStats, profileStats) ||
                other.profileStats == profileStats) &&
            (identical(other.isFollow, isFollow) ||
                other.isFollow == isFollow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, profileStats, isFollow);

  /// Create a copy of PublicProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProfileStateImplCopyWith<_$PublicProfileStateImpl> get copyWith =>
      __$$PublicProfileStateImplCopyWithImpl<_$PublicProfileStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestStatus status, ProfileStatsEnum profileStats, bool isFollow)
        publicProfileState,
  }) {
    return publicProfileState(status, profileStats, isFollow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestStatus status, ProfileStatsEnum profileStats, bool isFollow)?
        publicProfileState,
  }) {
    return publicProfileState?.call(status, profileStats, isFollow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestStatus status, ProfileStatsEnum profileStats, bool isFollow)?
        publicProfileState,
    required TResult orElse(),
  }) {
    if (publicProfileState != null) {
      return publicProfileState(status, profileStats, isFollow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PublicProfileState value) publicProfileState,
  }) {
    return publicProfileState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PublicProfileState value)? publicProfileState,
  }) {
    return publicProfileState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PublicProfileState value)? publicProfileState,
    required TResult orElse(),
  }) {
    if (publicProfileState != null) {
      return publicProfileState(this);
    }
    return orElse();
  }
}

abstract class _PublicProfileState implements PublicProfileState {
  const factory _PublicProfileState(
      {final RequestStatus status,
      final ProfileStatsEnum profileStats,
      final bool isFollow}) = _$PublicProfileStateImpl;

  @override
  RequestStatus get status;
  @override
  ProfileStatsEnum get profileStats;
  @override
  bool get isFollow;

  /// Create a copy of PublicProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublicProfileStateImplCopyWith<_$PublicProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
