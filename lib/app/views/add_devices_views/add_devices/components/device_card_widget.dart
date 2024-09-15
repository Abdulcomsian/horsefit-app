import '../../../../../core/constants/exports.dart';

class DeviceCardWidget extends StatelessWidget {
  const DeviceCardWidget({
    super.key,
    required String title,
    required VoidCallback onTap,
  })  : _title = title,
        _onTap = onTap;

  final String _title;
  final VoidCallback _onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 84.ph, vertical: 98.pv),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        borderRadius: BorderRadius.circular(66.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextViewWidget(_title, style: textTheme.titleLarge),
          Icon(Icons.arrow_forward_ios, size: 72.w),
        ],
      ),
    ).onTap(_onTap);
  }
}
