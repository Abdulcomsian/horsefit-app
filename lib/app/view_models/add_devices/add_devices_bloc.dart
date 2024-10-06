import '../../../core/constants/exports.dart';

part 'add_devices_event.dart';
part 'add_devices_state.dart';
part 'add_devices_bloc.freezed.dart';

class AddDevicesBloc extends Bloc<AddDevicesEvent, AddDevicesState> {
  AddDevicesBloc() : super(const AddDevicesState.addDevicesState()) {
    on<StartBluetoothScanning>(_startBluetoothScanning);
    on<RemoveDevice>(_removeDevice);
  }

  Future<void> _startBluetoothScanning(
      StartBluetoothScanning event, Emitter<AddDevicesState> emit) async {
    if (event.isConnect) {
      emit(state.copyWith(bluetoothScanningStatus: LoadingRequestStatus()));
    }
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(
      bluetoothScanningStatus: const SuccessRequestStatus(),
      isBlueConnected: event.isConnect,
      isBlueOn: event.isBlueOn,
      isDeviceRemoved: null,
    ));
  }

  void _removeDevice(RemoveDevice event, Emitter<AddDevicesState> emit) {
    emit(state.copyWith(isDeviceRemoved: true));
  }
}
