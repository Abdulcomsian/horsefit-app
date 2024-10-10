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
              return Row(
                children: [
                  SwitchWidget(
                    value: state.isBlueOn,
                    onChanged: (_) {
                      final isBlueConnected =
                          state.isBlueConnected != true ? true : false;
                      context
                          .read<AddDevicesBloc>()
                          .add(AddDevicesEvent.startBluetoothScanning(
                            isConnect: isBlueConnected,
                            isBlueOn: !state.isBlueOn,
                          ));
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
