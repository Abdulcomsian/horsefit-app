import '../../../../../core/constants/exports.dart';

class WorkoutConfigurationSummaryCardWidget extends StatelessWidget {
  const WorkoutConfigurationSummaryCardWidget({
    super.key,
    required String icon,
    title,
    Widget? child,
  })  : _icon = icon,
        _title = title,
        _child = child;

  final String _icon, _title;
  final Widget? _child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 92.ph, vertical: 76.pv),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grayColor),
        borderRadius: BorderRadius.circular(62.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPictureAssetWidget(_icon, size: 82.w),
              Expanded(
                child: TextViewWidget(_title, style: textTheme.titleLarge)
                    .center(),
              ),
            ],
          ),
          _child ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
