import '../../core/constants/exports.dart';

class UserProfileCardWidget extends StatelessWidget {
  const UserProfileCardWidget({
    super.key,
    required String leading,
    required String title,
    required String subTitle,
    EdgeInsetsGeometry? margin,
    Widget? trailing,
  })  : _margin = margin,
        _leadingUrl = leading,
        _title = title,
        _subTitle = subTitle,
        _trailing = trailing;

  final EdgeInsetsGeometry? _margin;
  final String _leadingUrl;
  final String _title;
  final String _subTitle;
  final Widget? _trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 82.ph, vertical: 72.pv),
      margin: _margin ?? EdgeInsets.symmetric(horizontal: 72.ph),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        borderRadius: BorderRadius.circular(66.r),
      ),
      child: Row(
        children: [
          ClipOval(
              child:
                  CachedNetworkImageWidget(imageUrl: _leadingUrl, size: 142.w)),
          SizedBox(width: 32.w),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextViewWidget(_title, style: textTheme.titleLarge),
                TextViewWidget(_subTitle, style: textTheme.titleSmall),
              ],
            ),
          ),
          _trailing ??
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RadioWidget(
                    isSelected: true,
                    color: AppColors.primaryColor.withOpacity(0.4),
                  ),
                  TextViewWidget(
                    'Following',
                    style: textTheme.titleSmall?.copyWith(
                      fontSize: 42.sp,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
        ],
      ),
    );
  }
}
