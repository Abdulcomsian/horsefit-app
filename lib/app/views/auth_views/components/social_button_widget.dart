import '../../../../core/constants/exports.dart';

class SocialButtonView extends StatelessWidget {
  const SocialButtonView({
    super.key,
    required String icon,
    required VoidCallback onTap,
  })  : _icon = icon,
        _onTap = onTap;

  final String _icon;
  final VoidCallback _onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 200.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.darkColor.withOpacity(0.1),
          width: 1.2.w,
        ),
      ),
      child: SvgPictureAssetWidget(_icon, size: 82.w),
    ).onTap(_onTap);
  }
}
