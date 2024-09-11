import 'package:horse_fit/app/views/my_stable_views/add_devices/add_devices/components/device_card_widget.dart';

import '../../../../../core/constants/exports.dart';

class AddDevicesView extends StatelessWidget {
  const AddDevicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Add Devices'),
      body: SizedBox.expand(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 92.ph),
          child: Column(
            children: [
              SizedBox(height: 448.h),
              DeviceCardWidget(
                title: 'Heart Rate Sensor',
                onTap: () => context.pushNamed(RouteNames.selectedDeviceView),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
