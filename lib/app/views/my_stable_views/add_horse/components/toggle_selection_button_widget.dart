import '../../../../../core/constants/exports.dart';

class ToggleSelectionButtonWidget extends StatelessWidget {
  const ToggleSelectionButtonWidget({
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
      icon: _isSelected
          ? SvgPictureAssetWidget(
              _icon,
              size: 36.w,
              isApplyColorFilter: true,
              color: AppColors.primaryColor,
            )
          : null,
      btnText: _btnText,
      color: _isSelected ? AppColors.whiteColor : Colors.transparent,
      textColor: _isSelected ? AppColors.darkColor : AppColors.darkColor,
      onTap: _onTap,
    ));
  }
}
