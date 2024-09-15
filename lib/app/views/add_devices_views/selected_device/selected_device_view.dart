import '../../../../core/constants/exports.dart';

class SelectedDeviceView extends StatelessWidget {
  const SelectedDeviceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Heart Rate Sensor'),
      body: SizedBox.expand(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 90.ph),
          child: Column(
            children: [
              SizedBox(height: 264.h),
              TextViewWidget(
                'Add Heart Rate \nSensor',
                align: TextAlign.center,
                style: textTheme.displayLarge
                    ?.copyWith(fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 264.h),
              const BluetoothCardWidget(),
              SizedBox(height: 264.h),
              BlocBuilder<AddDevicesBloc, AddDevicesState>(
                builder: (context, state) {
                  final blueScanningStatus =
                      state.bluetoothScanningStatus is LoadingRequestStatus;
                  return Visibility(
                    visible:
                        !blueScanningStatus && state.isBlueConnected == null,
                    child: TextViewWidget(
                      'Strap the Heart Rate Sensor on Horse, then \nclick scan.',
                      align: TextAlign.center,
                      style: textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w900,
                          color: const Color(0xFFE78034)),
                    ),
                  );
                },
              ),
              BlocBuilder<AddDevicesBloc, AddDevicesState>(
                builder: (context, state) {
                  final blueScanningStatus =
                      state.bluetoothScanningStatus is LoadingRequestStatus;
                  return Visibility(
                    visible: blueScanningStatus,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 160.h),
                        ShowLoadingWidget(
                          radius: 100.r,
                          color: AppColors.primaryColor,
                        ),
                        SizedBox(height: 66.h),
                        TextViewWidget(
                          'Scanning',
                          align: TextAlign.center,
                          style: textTheme.displayMedium
                              ?.copyWith(fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const HeartRateSensorStatusCard()
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder<AddDevicesBloc, AddDevicesState>(
            builder: (context, state) {
              return Visibility(
                visible:
                    state.bluetoothScanningStatus is! LoadingRequestStatus &&
                        state.isBlueConnected == null,
                child: ButtonWidget(
                  btnText: 'Scan',
                  color: !state.isBlueOn ? AppColors.grayColor : null,
                  textColor: !state.isBlueOn
                      ? AppColors.darkColor.withOpacity(0.3)
                      : null,
                  margin:
                      EdgeInsets.symmetric(horizontal: 92.ph, vertical: 62.pv),
                  onTap: () {
                    if (state.isBlueOn) {
                      context
                          .read<AddDevicesBloc>()
                          .add(const AddDevicesEvent.startBluetoothScanning(
                            isConnect: true,
                            isBlueOn: false,
                          ));
                    }
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
