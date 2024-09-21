// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_center_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageCenterEvent {
  MessageCenterTab get messageCenterTab => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MessageCenterTab messageCenterTab)
        toggleMessageCenterTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageCenterTab messageCenterTab)?
        toggleMessageCenterTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageCenterTab messageCenterTab)? toggleMessageCenterTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleMessageCenterTab value)
        toggleMessageCenterTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleMessageCenterTab value)? toggleMessageCenterTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleMessageCenterTab value)? toggleMessageCenterTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MessageCenterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCenterEventCopyWith<MessageCenterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCenterEventCopyWith<$Res> {
  factory $MessageCenterEventCopyWith(
          MessageCenterEvent value, $Res Function(MessageCenterEvent) then) =
      _$MessageCenterEventCopyWithImpl<$Res, MessageCenterEvent>;
  @useResult
  $Res call({MessageCenterTab messageCenterTab});
}

/// @nodoc
class _$MessageCenterEventCopyWithImpl<$Res, $Val extends MessageCenterEvent>
    implements $MessageCenterEventCopyWith<$Res> {
  _$MessageCenterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageCenterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageCenterTab = null,
  }) {
    return _then(_value.copyWith(
      messageCenterTab: null == messageCenterTab
          ? _value.messageCenterTab
          : messageCenterTab // ignore: cast_nullable_to_non_nullable
              as MessageCenterTab,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToggleMessageCenterTabImplCopyWith<$Res>
    implements $MessageCenterEventCopyWith<$Res> {
  factory _$$ToggleMessageCenterTabImplCopyWith(
          _$ToggleMessageCenterTabImpl value,
          $Res Function(_$ToggleMessageCenterTabImpl) then) =
      __$$ToggleMessageCenterTabImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MessageCenterTab messageCenterTab});
}

/// @nodoc
class __$$ToggleMessageCenterTabImplCopyWithImpl<$Res>
    extends _$MessageCenterEventCopyWithImpl<$Res, _$ToggleMessageCenterTabImpl>
    implements _$$ToggleMessageCenterTabImplCopyWith<$Res> {
  __$$ToggleMessageCenterTabImplCopyWithImpl(
      _$ToggleMessageCenterTabImpl _value,
      $Res Function(_$ToggleMessageCenterTabImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageCenterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageCenterTab = null,
  }) {
    return _then(_$ToggleMessageCenterTabImpl(
      messageCenterTab: null == messageCenterTab
          ? _value.messageCenterTab
          : messageCenterTab // ignore: cast_nullable_to_non_nullable
              as MessageCenterTab,
    ));
  }
}

/// @nodoc

class _$ToggleMessageCenterTabImpl implements ToggleMessageCenterTab {
  const _$ToggleMessageCenterTabImpl({required this.messageCenterTab});

  @override
  final MessageCenterTab messageCenterTab;

  @override
  String toString() {
    return 'MessageCenterEvent.toggleMessageCenterTab(messageCenterTab: $messageCenterTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleMessageCenterTabImpl &&
            (identical(other.messageCenterTab, messageCenterTab) ||
                other.messageCenterTab == messageCenterTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageCenterTab);

  /// Create a copy of MessageCenterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleMessageCenterTabImplCopyWith<_$ToggleMessageCenterTabImpl>
      get copyWith => __$$ToggleMessageCenterTabImplCopyWithImpl<
          _$ToggleMessageCenterTabImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MessageCenterTab messageCenterTab)
        toggleMessageCenterTab,
  }) {
    return toggleMessageCenterTab(messageCenterTab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageCenterTab messageCenterTab)?
        toggleMessageCenterTab,
  }) {
    return toggleMessageCenterTab?.call(messageCenterTab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageCenterTab messageCenterTab)? toggleMessageCenterTab,
    required TResult orElse(),
  }) {
    if (toggleMessageCenterTab != null) {
      return toggleMessageCenterTab(messageCenterTab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleMessageCenterTab value)
        toggleMessageCenterTab,
  }) {
    return toggleMessageCenterTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleMessageCenterTab value)? toggleMessageCenterTab,
  }) {
    return toggleMessageCenterTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleMessageCenterTab value)? toggleMessageCenterTab,
    required TResult orElse(),
  }) {
    if (toggleMessageCenterTab != null) {
      return toggleMessageCenterTab(this);
    }
    return orElse();
  }
}

abstract class ToggleMessageCenterTab implements MessageCenterEvent {
  const factory ToggleMessageCenterTab(
          {required final MessageCenterTab messageCenterTab}) =
      _$ToggleMessageCenterTabImpl;

  @override
  MessageCenterTab get messageCenterTab;

  /// Create a copy of MessageCenterEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleMessageCenterTabImplCopyWith<_$ToggleMessageCenterTabImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageCenterState {
  RequestStatus get status => throw _privateConstructorUsedError;
  MessageCenterTab get messageCenterTab => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestStatus status, MessageCenterTab messageCenterTab)
        messageCenterState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestStatus status, MessageCenterTab messageCenterTab)?
        messageCenterState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestStatus status, MessageCenterTab messageCenterTab)?
        messageCenterState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageCenterState value) messageCenterState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageCenterState value)? messageCenterState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageCenterState value)? messageCenterState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MessageCenterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCenterStateCopyWith<MessageCenterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCenterStateCopyWith<$Res> {
  factory $MessageCenterStateCopyWith(
          MessageCenterState value, $Res Function(MessageCenterState) then) =
      _$MessageCenterStateCopyWithImpl<$Res, MessageCenterState>;
  @useResult
  $Res call({RequestStatus status, MessageCenterTab messageCenterTab});
}

/// @nodoc
class _$MessageCenterStateCopyWithImpl<$Res, $Val extends MessageCenterState>
    implements $MessageCenterStateCopyWith<$Res> {
  _$MessageCenterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageCenterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? messageCenterTab = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      messageCenterTab: null == messageCenterTab
          ? _value.messageCenterTab
          : messageCenterTab // ignore: cast_nullable_to_non_nullable
              as MessageCenterTab,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageCenterStateImplCopyWith<$Res>
    implements $MessageCenterStateCopyWith<$Res> {
  factory _$$MessageCenterStateImplCopyWith(_$MessageCenterStateImpl value,
          $Res Function(_$MessageCenterStateImpl) then) =
      __$$MessageCenterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestStatus status, MessageCenterTab messageCenterTab});
}

/// @nodoc
class __$$MessageCenterStateImplCopyWithImpl<$Res>
    extends _$MessageCenterStateCopyWithImpl<$Res, _$MessageCenterStateImpl>
    implements _$$MessageCenterStateImplCopyWith<$Res> {
  __$$MessageCenterStateImplCopyWithImpl(_$MessageCenterStateImpl _value,
      $Res Function(_$MessageCenterStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageCenterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? messageCenterTab = null,
  }) {
    return _then(_$MessageCenterStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      messageCenterTab: null == messageCenterTab
          ? _value.messageCenterTab
          : messageCenterTab // ignore: cast_nullable_to_non_nullable
              as MessageCenterTab,
    ));
  }
}

/// @nodoc

class _$MessageCenterStateImpl implements _MessageCenterState {
  const _$MessageCenterStateImpl(
      {this.status = const InitialRequestStatus(),
      this.messageCenterTab = MessageCenterTab.chat});

  @override
  @JsonKey()
  final RequestStatus status;
  @override
  @JsonKey()
  final MessageCenterTab messageCenterTab;

  @override
  String toString() {
    return 'MessageCenterState.messageCenterState(status: $status, messageCenterTab: $messageCenterTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageCenterStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.messageCenterTab, messageCenterTab) ||
                other.messageCenterTab == messageCenterTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, messageCenterTab);

  /// Create a copy of MessageCenterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageCenterStateImplCopyWith<_$MessageCenterStateImpl> get copyWith =>
      __$$MessageCenterStateImplCopyWithImpl<_$MessageCenterStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestStatus status, MessageCenterTab messageCenterTab)
        messageCenterState,
  }) {
    return messageCenterState(status, messageCenterTab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestStatus status, MessageCenterTab messageCenterTab)?
        messageCenterState,
  }) {
    return messageCenterState?.call(status, messageCenterTab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestStatus status, MessageCenterTab messageCenterTab)?
        messageCenterState,
    required TResult orElse(),
  }) {
    if (messageCenterState != null) {
      return messageCenterState(status, messageCenterTab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageCenterState value) messageCenterState,
  }) {
    return messageCenterState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageCenterState value)? messageCenterState,
  }) {
    return messageCenterState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageCenterState value)? messageCenterState,
    required TResult orElse(),
  }) {
    if (messageCenterState != null) {
      return messageCenterState(this);
    }
    return orElse();
  }
}

abstract class _MessageCenterState implements MessageCenterState {
  const factory _MessageCenterState(
      {final RequestStatus status,
      final MessageCenterTab messageCenterTab}) = _$MessageCenterStateImpl;

  @override
  RequestStatus get status;
  @override
  MessageCenterTab get messageCenterTab;

  /// Create a copy of MessageCenterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageCenterStateImplCopyWith<_$MessageCenterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
