import '../../core/constants/exports.dart';

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({
    super.key,
    required bool value,
    double? baseWidth,
    double? baseHeight,
    double? circleSize,
    double? horizontalPadding,
    Function(bool)? onChanged,
  })  : _value = value,
        _baseWidth = baseWidth,
        _baseHeight = baseHeight,
        _circleSize = circleSize,
        _horizontalPadding = horizontalPadding,
        _onChanged = onChanged;

  final double? _baseWidth;
  final double? _baseHeight;
  final double? _circleSize;
  final double? _horizontalPadding;
  final bool _value;
  final Function(bool)? _onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _baseWidth ?? 160.w,
      height: _baseHeight ?? 100.h,
      decoration: BoxDecoration(
          color: _value ? AppColors.primaryColor : const Color(0xFFE0E2E6),
          borderRadius: BorderRadius.circular(56.r)),
      alignment: _value ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        width: _circleSize?.w ?? 68.w,
        height: _circleSize?.w ?? 68.w,
        margin: EdgeInsets.symmetric(horizontal: _horizontalPadding ?? 16.ph),
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          shape: BoxShape.circle,
        ),
      ),
    ).onTap(() {
      if (_onChanged != null) _onChanged(!_value);
    });
  }
}
