import '../../../core/constants/exports.dart';

class GenderSelectionButtonWidget extends StatelessWidget {
  const GenderSelectionButtonWidget({
    super.key,
    required String icon,
    required String btnText,
    required bool isSelected,
    required VoidCallback onTap,
  })  : _icon = icon,
        _btnText = btnText,
        _isSelected = isSelected,
        _onTap = onTap;

  final String _icon;
  final String _btnText;
  final bool _isSelected;
  final VoidCallback _onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ButtonWidget(
      icon: SvgPictureAssetWidget(_icon, size: 72.w),
      btnText: _btnText,
      color: _isSelected ? AppColors.darkColor : Colors.transparent,
      textColor: _isSelected ? AppColors.whiteColor : AppColors.darkColor,
      onTap: _onTap,
    ));
  }
}
