part of 'add_devices_bloc.dart';

@freezed
class AddDevicesEvent with _$AddDevicesEvent {
  const factory AddDevicesEvent.toggleBluetoothStatus(
      {required bool toggleBlue}) = ToggleBluetoothStatus;
  const factory AddDevicesEvent.startBluetoothScanning(
      {required bool isConnect,
      required bool isBlueOn}) = StartBluetoothScanning;
}
