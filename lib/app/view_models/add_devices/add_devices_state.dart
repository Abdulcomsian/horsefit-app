part of 'add_devices_bloc.dart';

@freezed
class AddDevicesState with _$AddDevicesState {
  const factory AddDevicesState.addDevicesState({
    @Default(InitialRequestStatus()) RequestStatus status,
    @Default(InitialRequestStatus()) RequestStatus bluetoothStatus,
    @Default(InitialRequestStatus()) RequestStatus bluetoothScanningStatus,
    @Default(false) bool isBlueOn,
    @Default(null) bool? isBlueConnected,
  }) = _AddDevicesState;
}
