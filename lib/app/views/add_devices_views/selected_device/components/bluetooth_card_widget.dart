import '../../../../../core/constants/exports.dart';

class BluetoothCardWidget extends StatelessWidget {
  const BluetoothCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 82.ph, vertical: 100.pv),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        borderRadius: BorderRadius.circular(48.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextViewWidget(
              'Connect to \n${ConstantsResource.appName} Heart Sensor',
              style: textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          BlocBuilder<AddDevicesBloc, AddDevicesState>(
            builder: (context, state) {
              final blueStatus = state.bluetoothStatus is LoadingRequestStatus;
              return Row(
                children: [
                  if (blueStatus) SizedBox(width: 12.w),
                  if (blueStatus) const ShowLoadingWidget(),
                  SizedBox(width: 24.w),
                  SwitchWidget(
                    value: state.isBlueOn,
                    onChanged: (_) {
                      if (state.bluetoothScanningStatus
                          is SuccessRequestStatus) {
                        locator<DialogueUtils>()
                            .customDialog(
                          context,
                          title:
                              'Are you sure you want to disconnect this device?',
                        )
                            .then((result) {
                          if (!result) return;
                          if (state.isBlueConnected != null) {
                            // ignore: use_build_context_synchronously
                            context
                                .read<AddDevicesBloc>()
                                .add(AddDevicesEvent.startBluetoothScanning(
                                  isConnect: !state.isBlueConnected!,
                                  isBlueOn: true,
                                ));
                          }
                        });
                      } else {
                        context.read<AddDevicesBloc>().add(
                            AddDevicesEvent.toggleBluetoothStatus(
                                toggleBlue: !state.isBlueOn));
                      }
                    },
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
