import '../../core/constants/exports.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    super.key,
    required String imageUrl,
    required String title,
    required String subTitle,
    Widget? trailing,
    bool isEllipsis = true,
    Color bgColor = AppColors.darkColor,
    Color titleColor = AppColors.whiteColor,
    Color subTitleColor = AppColors.yellowColor,
  })  : _imageUrl = imageUrl,
        _title = title,
        _subTitle = subTitle,
        _trailing = trailing,
        _isEllipsis = isEllipsis,
        _bgColor = bgColor,
        _titleColor = titleColor,
        _subTitleColor = subTitleColor;

  final String _imageUrl;
  final String _title;
  final String _subTitle;
  final Widget? _trailing;
  final bool _isEllipsis;
  final Color _bgColor;
  final Color _titleColor;
  final Color _subTitleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 62.ph, vertical: 56.pv),
      decoration: BoxDecoration(
        color: _bgColor,
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Row(
        children: [
          CachedNetworkImageWidget(
            imageUrl: _imageUrl,
            width: 200.w,
            height: 200.w,
            borderRadius: BorderRadius.circular(100.r),
          ),
          SizedBox(width: 40.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextViewWidget(
                  _title,
                  style: textTheme.headlineLarge?.copyWith(color: _titleColor),
                  isEllipsis: _isEllipsis,
                ),
                SizedBox(height: 24.h),
                TextViewWidget(
                  _subTitle,
                  style: textTheme.titleMedium?.copyWith(color: _subTitleColor),
                  isEllipsis: _isEllipsis,
                ),
              ],
            ),
          ),
          SizedBox(width: 40.w),
          if (_trailing != null) _trailing,
          if (_trailing == null)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 32.ph, vertical: 32.pv),
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFF3AC2C2),
                  Color(0xFF18B5D6),
                ]),
                shape: BoxShape.circle,
              ),
              child: SvgPictureAssetWidget(
                ImagesResource.arrowForwardIcon,
                size: 42.w,
              ),
            )
        ],
      ),
    );
  }
}
