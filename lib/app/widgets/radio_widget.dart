import '../../core/constants/exports.dart';

class RadioWidget extends StatelessWidget {
  const RadioWidget({super.key, required bool isSelected, Color? color})
      : _isSelected = isSelected,
        _color = color;

  final bool _isSelected;
  final Color? _color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: !_isSelected ? 36.ph : 28.ph,
        vertical: !_isSelected ? 36.pv : 28.pv,
      ),
      decoration: BoxDecoration(
        color: _isSelected ? _color ?? AppColors.greenColor : null,
        shape: BoxShape.circle,
        border: !_isSelected
            ? Border.all(
                width: 1.6.w,
                color: const Color(0xFFE0E2E6),
              )
            : null,
      ),
      child: _isSelected
          ? SvgPictureAssetWidget(ImagesResource.checkIcon, size: 28.w)
          : const SizedBox.shrink(),
    );
  }
}
