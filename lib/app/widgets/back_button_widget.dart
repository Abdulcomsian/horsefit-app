import '../../core/constants/exports.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    super.key,
    Color? color,
    VoidCallback? onTap,
  })  : _color = color,
        _onTap = onTap;

  final Color? _color;
  final VoidCallback? _onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.ph, top: 24.pv),
      padding: EdgeInsets.symmetric(horizontal: 56.ph, vertical: 56.pv),
      decoration: BoxDecoration(
        color: _color,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.darkColor.withOpacity(0.1)),
      ),
      child: SvgPictureAssetWidget(ImagesResource.arrowBackIcon, size: 92.w),
    ).onTap(_onTap ?? () => context.pop());
  }
}
