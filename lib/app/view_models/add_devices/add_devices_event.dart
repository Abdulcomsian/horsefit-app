part of 'add_devices_bloc.dart';

@freezed
class AddDevicesEvent with _$AddDevicesEvent {
  const factory AddDevicesEvent.startBluetoothScanning(
      {required bool isConnect,
      required bool isBlueOn}) = StartBluetoothScanning;
  const factory AddDevicesEvent.removeDevice() = RemoveDevice;
}
