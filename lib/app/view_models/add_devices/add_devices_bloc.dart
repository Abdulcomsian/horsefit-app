import '../../../core/constants/exports.dart';

part 'add_devices_event.dart';
part 'add_devices_state.dart';
part 'add_devices_bloc.freezed.dart';

class AddDevicesBloc extends Bloc<AddDevicesEvent, AddDevicesState> {
  AddDevicesBloc() : super(const AddDevicesState.addDevicesState()) {
    on<ToggleBluetoothStatus>(_toggleBluetoothStatus);
    on<StartBluetoothScanning>(_startBluetoothScanning);
  }

  Future<void> _toggleBluetoothStatus(
      ToggleBluetoothStatus event, Emitter<AddDevicesState> emit) async {
    emit(state.copyWith(bluetoothStatus: LoadingRequestStatus()));
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(
      bluetoothStatus: const SuccessRequestStatus(),
      isBlueOn: event.toggleBlue,
    ));
  }

  Future<void> _startBluetoothScanning(
      StartBluetoothScanning event, Emitter<AddDevicesState> emit) async {
    if (event.isBlueOn) {
      add(ToggleBluetoothStatus(toggleBlue: !state.isBlueOn));
    }
    if (event.isConnect) {
      emit(state.copyWith(bluetoothScanningStatus: LoadingRequestStatus()));
    }
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(
      bluetoothScanningStatus: const SuccessRequestStatus(),
      isBlueConnected: event.isConnect,
    ));
  }
}
