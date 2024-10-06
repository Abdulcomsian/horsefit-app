import '../../../../../core/constants/exports.dart';

class WorkoutStatusCardWidget extends StatelessWidget {
  const WorkoutStatusCardWidget({
    super.key,
    required String icon,
    required String title,
    required String subTitle,
    required String trailing,
    required Color color,
  })  : _icon = icon,
        _title = title,
        _subTitle = subTitle,
        _trailing = trailing,
        _color = color;

  final String _icon, _title, _subTitle, _trailing;
  final Color _color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Expanded(child: Image.asset(ImagesResource.eventCardBaseImg)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 72.ph, top: 56.pv, bottom: 56.pv),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextViewWidget(
                        _title,
                        style: textTheme.headlineSmall
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 52.h),
                      FittedBox(
                        child: TextViewWidget(
                          _subTitle,
                          style: textTheme.displayLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: _color,
                            fontSize: 188.sp,
                          ),
                        ),
                      ),
                      SizedBox(height: 52.h),
                      TextViewWidget(
                        _trailing,
                        style: textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w700, color: _color),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 48.ph, vertical: 48.pv),
                decoration:
                    BoxDecoration(color: _color, shape: BoxShape.circle),
                child: SvgPictureAssetWidget(_icon,
                    size: 88.w, isApplyColorFilter: true),
              ),
            ],
          )
        ],
      ),
    );
  }
}
