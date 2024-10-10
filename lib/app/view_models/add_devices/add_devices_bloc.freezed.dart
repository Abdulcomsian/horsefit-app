// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_devices_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddDevicesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isConnect, bool isBlueOn)
        startBluetoothScanning,
    required TResult Function() removeDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isConnect, bool isBlueOn)? startBluetoothScanning,
    TResult? Function()? removeDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isConnect, bool isBlueOn)? startBluetoothScanning,
    TResult Function()? removeDevice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartBluetoothScanning value)
        startBluetoothScanning,
    required TResult Function(RemoveDevice value) removeDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartBluetoothScanning value)? startBluetoothScanning,
    TResult? Function(RemoveDevice value)? removeDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartBluetoothScanning value)? startBluetoothScanning,
    TResult Function(RemoveDevice value)? removeDevice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDevicesEventCopyWith<$Res> {
  factory $AddDevicesEventCopyWith(
          AddDevicesEvent value, $Res Function(AddDevicesEvent) then) =
      _$AddDevicesEventCopyWithImpl<$Res, AddDevicesEvent>;
}

/// @nodoc
class _$AddDevicesEventCopyWithImpl<$Res, $Val extends AddDevicesEvent>
    implements $AddDevicesEventCopyWith<$Res> {
  _$AddDevicesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddDevicesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartBluetoothScanningImplCopyWith<$Res> {
  factory _$$StartBluetoothScanningImplCopyWith(
          _$StartBluetoothScanningImpl value,
          $Res Function(_$StartBluetoothScanningImpl) then) =
      __$$StartBluetoothScanningImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isConnect, bool isBlueOn});
}

/// @nodoc
class __$$StartBluetoothScanningImplCopyWithImpl<$Res>
    extends _$AddDevicesEventCopyWithImpl<$Res, _$StartBluetoothScanningImpl>
    implements _$$StartBluetoothScanningImplCopyWith<$Res> {
  __$$StartBluetoothScanningImplCopyWithImpl(
      _$StartBluetoothScanningImpl _value,
      $Res Function(_$StartBluetoothScanningImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddDevicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnect = null,
    Object? isBlueOn = null,
  }) {
    return _then(_$StartBluetoothScanningImpl(
      isConnect: null == isConnect
          ? _value.isConnect
          : isConnect // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlueOn: null == isBlueOn
          ? _value.isBlueOn
          : isBlueOn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartBluetoothScanningImpl implements StartBluetoothScanning {
  const _$StartBluetoothScanningImpl(
      {required this.isConnect, required this.isBlueOn});

  @override
  final bool isConnect;
  @override
  final bool isBlueOn;

  @override
  String toString() {
    return 'AddDevicesEvent.startBluetoothScanning(isConnect: $isConnect, isBlueOn: $isBlueOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartBluetoothScanningImpl &&
            (identical(other.isConnect, isConnect) ||
                other.isConnect == isConnect) &&
            (identical(other.isBlueOn, isBlueOn) ||
                other.isBlueOn == isBlueOn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnect, isBlueOn);

  /// Create a copy of AddDevicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartBluetoothScanningImplCopyWith<_$StartBluetoothScanningImpl>
      get copyWith => __$$StartBluetoothScanningImplCopyWithImpl<
          _$StartBluetoothScanningImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isConnect, bool isBlueOn)
        startBluetoothScanning,
    required TResult Function() removeDevice,
  }) {
    return startBluetoothScanning(isConnect, isBlueOn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isConnect, bool isBlueOn)? startBluetoothScanning,
    TResult? Function()? removeDevice,
  }) {
    return startBluetoothScanning?.call(isConnect, isBlueOn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isConnect, bool isBlueOn)? startBluetoothScanning,
    TResult Function()? removeDevice,
    required TResult orElse(),
  }) {
    if (startBluetoothScanning != null) {
      return startBluetoothScanning(isConnect, isBlueOn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartBluetoothScanning value)
        startBluetoothScanning,
    required TResult Function(RemoveDevice value) removeDevice,
  }) {
    return startBluetoothScanning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartBluetoothScanning value)? startBluetoothScanning,
    TResult? Function(RemoveDevice value)? removeDevice,
  }) {
    return startBluetoothScanning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartBluetoothScanning value)? startBluetoothScanning,
    TResult Function(RemoveDevice value)? removeDevice,
    required TResult orElse(),
  }) {
    if (startBluetoothScanning != null) {
      return startBluetoothScanning(this);
    }
    return orElse();
  }
}

abstract class StartBluetoothScanning implements AddDevicesEvent {
  const factory StartBluetoothScanning(
      {required final bool isConnect,
      required final bool isBlueOn}) = _$StartBluetoothScanningImpl;

  bool get isConnect;
  bool get isBlueOn;

  /// Create a copy of AddDevicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartBluetoothScanningImplCopyWith<_$StartBluetoothScanningImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveDeviceImplCopyWith<$Res> {
  factory _$$RemoveDeviceImplCopyWith(
          _$RemoveDeviceImpl value, $Res Function(_$RemoveDeviceImpl) then) =
      __$$RemoveDeviceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveDeviceImplCopyWithImpl<$Res>
    extends _$AddDevicesEventCopyWithImpl<$Res, _$RemoveDeviceImpl>
    implements _$$RemoveDeviceImplCopyWith<$Res> {
  __$$RemoveDeviceImplCopyWithImpl(
      _$RemoveDeviceImpl _value, $Res Function(_$RemoveDeviceImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddDevicesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoveDeviceImpl implements RemoveDevice {
  const _$RemoveDeviceImpl();

  @override
  String toString() {
    return 'AddDevicesEvent.removeDevice()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveDeviceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isConnect, bool isBlueOn)
        startBluetoothScanning,
    required TResult Function() removeDevice,
  }) {
    return removeDevice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isConnect, bool isBlueOn)? startBluetoothScanning,
    TResult? Function()? removeDevice,
  }) {
    return removeDevice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isConnect, bool isBlueOn)? startBluetoothScanning,
    TResult Function()? removeDevice,
    required TResult orElse(),
  }) {
    if (removeDevice != null) {
      return removeDevice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartBluetoothScanning value)
        startBluetoothScanning,
    required TResult Function(RemoveDevice value) removeDevice,
  }) {
    return removeDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartBluetoothScanning value)? startBluetoothScanning,
    TResult? Function(RemoveDevice value)? removeDevice,
  }) {
    return removeDevice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartBluetoothScanning value)? startBluetoothScanning,
    TResult Function(RemoveDevice value)? removeDevice,
    required TResult orElse(),
  }) {
    if (removeDevice != null) {
      return removeDevice(this);
    }
    return orElse();
  }
}

abstract class RemoveDevice implements AddDevicesEvent {
  const factory RemoveDevice() = _$RemoveDeviceImpl;
}

/// @nodoc
mixin _$AddDevicesState {
  RequestStatus get bluetoothScanningStatus =>
      throw _privateConstructorUsedError;
  bool get isBlueOn => throw _privateConstructorUsedError;
  bool? get isBlueConnected => throw _privateConstructorUsedError;
  bool? get isDeviceRemoved => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestStatus bluetoothScanningStatus,
            bool isBlueOn, bool? isBlueConnected, bool? isDeviceRemoved)
        addDevicesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestStatus bluetoothScanningStatus, bool isBlueOn,
            bool? isBlueConnected, bool? isDeviceRemoved)?
        addDevicesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestStatus bluetoothScanningStatus, bool isBlueOn,
            bool? isBlueConnected, bool? isDeviceRemoved)?
        addDevicesState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDevicesState value) addDevicesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDevicesState value)? addDevicesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDevicesState value)? addDevicesState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AddDevicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddDevicesStateCopyWith<AddDevicesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDevicesStateCopyWith<$Res> {
  factory $AddDevicesStateCopyWith(
          AddDevicesState value, $Res Function(AddDevicesState) then) =
      _$AddDevicesStateCopyWithImpl<$Res, AddDevicesState>;
  @useResult
  $Res call(
      {RequestStatus bluetoothScanningStatus,
      bool isBlueOn,
      bool? isBlueConnected,
      bool? isDeviceRemoved});
}

/// @nodoc
class _$AddDevicesStateCopyWithImpl<$Res, $Val extends AddDevicesState>
    implements $AddDevicesStateCopyWith<$Res> {
  _$AddDevicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddDevicesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bluetoothScanningStatus = null,
    Object? isBlueOn = null,
    Object? isBlueConnected = freezed,
    Object? isDeviceRemoved = freezed,
  }) {
    return _then(_value.copyWith(
      bluetoothScanningStatus: null == bluetoothScanningStatus
          ? _value.bluetoothScanningStatus
          : bluetoothScanningStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      isBlueOn: null == isBlueOn
          ? _value.isBlueOn
          : isBlueOn // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlueConnected: freezed == isBlueConnected
          ? _value.isBlueConnected
          : isBlueConnected // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeviceRemoved: freezed == isDeviceRemoved
          ? _value.isDeviceRemoved
          : isDeviceRemoved // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddDevicesStateImplCopyWith<$Res>
    implements $AddDevicesStateCopyWith<$Res> {
  factory _$$AddDevicesStateImplCopyWith(_$AddDevicesStateImpl value,
          $Res Function(_$AddDevicesStateImpl) then) =
      __$$AddDevicesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus bluetoothScanningStatus,
      bool isBlueOn,
      bool? isBlueConnected,
      bool? isDeviceRemoved});
}

/// @nodoc
class __$$AddDevicesStateImplCopyWithImpl<$Res>
    extends _$AddDevicesStateCopyWithImpl<$Res, _$AddDevicesStateImpl>
    implements _$$AddDevicesStateImplCopyWith<$Res> {
  __$$AddDevicesStateImplCopyWithImpl(
      _$AddDevicesStateImpl _value, $Res Function(_$AddDevicesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddDevicesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bluetoothScanningStatus = null,
    Object? isBlueOn = null,
    Object? isBlueConnected = freezed,
    Object? isDeviceRemoved = freezed,
  }) {
    return _then(_$AddDevicesStateImpl(
      bluetoothScanningStatus: null == bluetoothScanningStatus
          ? _value.bluetoothScanningStatus
          : bluetoothScanningStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      isBlueOn: null == isBlueOn
          ? _value.isBlueOn
          : isBlueOn // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlueConnected: freezed == isBlueConnected
          ? _value.isBlueConnected
          : isBlueConnected // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeviceRemoved: freezed == isDeviceRemoved
          ? _value.isDeviceRemoved
          : isDeviceRemoved // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$AddDevicesStateImpl implements _AddDevicesState {
  const _$AddDevicesStateImpl(
      {this.bluetoothScanningStatus = const InitialRequestStatus(),
      this.isBlueOn = false,
      this.isBlueConnected = null,
      this.isDeviceRemoved = null});

  @override
  @JsonKey()
  final RequestStatus bluetoothScanningStatus;
  @override
  @JsonKey()
  final bool isBlueOn;
  @override
  @JsonKey()
  final bool? isBlueConnected;
  @override
  @JsonKey()
  final bool? isDeviceRemoved;

  @override
  String toString() {
    return 'AddDevicesState.addDevicesState(bluetoothScanningStatus: $bluetoothScanningStatus, isBlueOn: $isBlueOn, isBlueConnected: $isBlueConnected, isDeviceRemoved: $isDeviceRemoved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDevicesStateImpl &&
            (identical(
                    other.bluetoothScanningStatus, bluetoothScanningStatus) ||
                other.bluetoothScanningStatus == bluetoothScanningStatus) &&
            (identical(other.isBlueOn, isBlueOn) ||
                other.isBlueOn == isBlueOn) &&
            (identical(other.isBlueConnected, isBlueConnected) ||
                other.isBlueConnected == isBlueConnected) &&
            (identical(other.isDeviceRemoved, isDeviceRemoved) ||
                other.isDeviceRemoved == isDeviceRemoved));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bluetoothScanningStatus,
      isBlueOn, isBlueConnected, isDeviceRemoved);

  /// Create a copy of AddDevicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDevicesStateImplCopyWith<_$AddDevicesStateImpl> get copyWith =>
      __$$AddDevicesStateImplCopyWithImpl<_$AddDevicesStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestStatus bluetoothScanningStatus,
            bool isBlueOn, bool? isBlueConnected, bool? isDeviceRemoved)
        addDevicesState,
  }) {
    return addDevicesState(
        bluetoothScanningStatus, isBlueOn, isBlueConnected, isDeviceRemoved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestStatus bluetoothScanningStatus, bool isBlueOn,
            bool? isBlueConnected, bool? isDeviceRemoved)?
        addDevicesState,
  }) {
    return addDevicesState?.call(
        bluetoothScanningStatus, isBlueOn, isBlueConnected, isDeviceRemoved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestStatus bluetoothScanningStatus, bool isBlueOn,
            bool? isBlueConnected, bool? isDeviceRemoved)?
        addDevicesState,
    required TResult orElse(),
  }) {
    if (addDevicesState != null) {
      return addDevicesState(
          bluetoothScanningStatus, isBlueOn, isBlueConnected, isDeviceRemoved);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDevicesState value) addDevicesState,
  }) {
    return addDevicesState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDevicesState value)? addDevicesState,
  }) {
    return addDevicesState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDevicesState value)? addDevicesState,
    required TResult orElse(),
  }) {
    if (addDevicesState != null) {
      return addDevicesState(this);
    }
    return orElse();
  }
}

abstract class _AddDevicesState implements AddDevicesState {
  const factory _AddDevicesState(
      {final RequestStatus bluetoothScanningStatus,
      final bool isBlueOn,
      final bool? isBlueConnected,
      final bool? isDeviceRemoved}) = _$AddDevicesStateImpl;

  @override
  RequestStatus get bluetoothScanningStatus;
  @override
  bool get isBlueOn;
  @override
  bool? get isBlueConnected;
  @override
  bool? get isDeviceRemoved;

  /// Create a copy of AddDevicesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddDevicesStateImplCopyWith<_$AddDevicesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
