import '../../../../../core/constants/exports.dart';

class HeartRateSensorStatusCard extends StatelessWidget {
  const HeartRateSensorStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddDevicesBloc, AddDevicesState>(
      builder: (context, state) {
        return Visibility(
          visible: state.bluetoothScanningStatus is SuccessRequestStatus &&
              state.isDeviceRemoved != true,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 48.ph, vertical: 102.pv),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.grayColor),
                      borderRadius: BorderRadius.circular(78.r),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        TextViewWidget(
                          '${ConstantsResource.appName} HRS',
                          style: textTheme.headlineSmall
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 22.h),
                        TextViewWidget(
                          state.isBlueConnected == true
                              ? 'Connected'
                              : 'Not Connected',
                          style: textTheme.displayMedium
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 56.h),
                        Visibility(
                          visible: state.isBlueConnected == true,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPictureAssetWidget(
                                  ImagesResource.heartRateIcon,
                                  size: 192.w),
                              SizedBox(width: 40.w),
                              TextViewWidget(
                                'BPM',
                                style: textTheme.displayMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 82.sp),
                              ),
                              SizedBox(width: 22.w),
                              TextViewWidget(
                                '78',
                                style: textTheme.displayMedium?.copyWith(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 92.sp,
                                  color: AppColors.redColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: state.isBlueConnected == false,
                          child: SvgPictureAssetWidget(
                              ImagesResource.thumbDownIcon,
                              size: 200.w),
                        ),
                      ],
                    ),
                  ),
                  if (state.isBlueConnected == false)
                    Padding(
                      padding: EdgeInsets.only(top: 142.ph),
                      child: TextViewWidget(
                        'Make sure you have sat you mobile in pairing modus, and try again.',
                        align: TextAlign.center,
                        style: textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w900,
                            color: const Color(0xFFE78034)),
                      ),
                    ),
                ],
              ),
              Positioned(
                top: 36.h,
                right: 36.w,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 32.ph, vertical: 32.pv),
                  decoration: const BoxDecoration(
                    color: AppColors.grayColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.close,
                    color: AppColors.darkColor.withOpacity(0.8),
                    size: 56.w,
                  ),
                ).onTap(() async {
                  if (state.isBlueConnected == true) {
                    await locator<DialogueUtils>()
                        .customDialog(context, title: 'Disconnect this device?')
                        .then((result) {
                      if (!result) return;
                      if (state.isBlueConnected != null) {
                        // ignore: use_build_context_synchronously
                        context
                            .read<AddDevicesBloc>()
                            .add(AddDevicesEvent.startBluetoothScanning(
                              isConnect: !state.isBlueConnected!,
                              isBlueOn: false,
                            ));
                      }
                    });
                  } else {
                    await locator<DialogueUtils>()
                        .customDialog(context, title: 'Remove this device?')
                        .then((result) {
                      if (!result) return;

                      // ignore: use_build_context_synchronously
                      context
                          .read<AddDevicesBloc>()
                          .add(const AddDevicesEvent.removeDevice());
                    });
                  }
                }),
              ),
            ],
          ),
        );
      },
    );
  }
}
