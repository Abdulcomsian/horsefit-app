import '../../core/constants/exports.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required TextEditingController controller,
    TextStyle? style,
    TextStyle? hintStyle,
    VoidCallback? onTap,
    String? hintText,
    labelText,
    errorText,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    bool? obscureText,
    bool? enabled,
    Widget? prefixIcon,
    BoxConstraints? prefixIconConstraints,
    Widget? suffixIcon,
    double? radius,
    AutovalidateMode? autovalidateMode,
    int? maxLines,
    TextStyle? errorStyle,
    EdgeInsetsGeometry? contentPadding,
    bool? isShowBorder,
    Color? filledColor,
    Function(String? value)? onChanged,
    String? Function(String? value)? validator,
  })  : _controller = controller,
        _style = style,
        _hintStyle = hintStyle,
        _onTap = onTap,
        _hintText = hintText,
        _labelText = labelText,
        _errorText = errorText,
        _keyboardType = keyboardType,
        _textInputAction = textInputAction,
        _obscureText = obscureText,
        _enabled = enabled,
        _prefixIcon = prefixIcon,
        _prefixIconConstraints = prefixIconConstraints,
        _suffixIcon = suffixIcon,
        _radius = radius,
        _autovalidateMode = autovalidateMode,
        _maxLines = maxLines,
        _errorStyle = errorStyle,
        _contentPadding = contentPadding,
        _isShowBorder = isShowBorder,
        _filledColor = filledColor,
        _onChanged = onChanged,
        _validator = validator;

  final TextEditingController _controller;
  final TextStyle? _style, _hintStyle;
  final VoidCallback? _onTap;
  final String? _hintText, _labelText, _errorText;
  final TextInputType? _keyboardType;
  final TextInputAction? _textInputAction;
  final bool? _obscureText;
  final bool? _enabled;
  final Widget? _prefixIcon;
  final BoxConstraints? _prefixIconConstraints;
  final Widget? _suffixIcon;
  final AutovalidateMode? _autovalidateMode;
  final double? _radius;
  final int? _maxLines;
  final TextStyle? _errorStyle;
  final EdgeInsetsGeometry? _contentPadding;
  final bool? _isShowBorder;
  final Color? _filledColor;
  final Function(String? value)? _onChanged;
  final String? Function(String? value)? _validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_radius ?? 8.r),
        border: _isShowBorder != null
            ? Border.all(color: AppColors.grayColor)
            : null,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(_radius ?? 8.r),
        child: TextFormField(
          onTap: _onTap,
          controller: _controller,
          textInputAction: _textInputAction ?? TextInputAction.done,
          autovalidateMode:
              _autovalidateMode ?? AutovalidateMode.onUserInteraction,
          enabled: _enabled,
          keyboardType: _keyboardType ?? TextInputType.text,
          obscureText: _obscureText ?? false,
          maxLines: _maxLines ?? 1,
          style: _style ??
              textTheme.labelLarge?.copyWith(
                  color: AppColors.darkColor, fontWeight: FontWeight.w500),
          textAlignVertical: TextAlignVertical.center,
          obscuringCharacter: '*',
          decoration: InputDecoration(
            hintText: _hintText ?? '',
            hintStyle: _hintStyle ??
                textTheme.labelLarge?.copyWith(
                    color: AppColors.darkColor.withOpacity(0.5),
                    fontWeight: FontWeight.w500),
            labelText: _labelText,
            labelStyle: textTheme.bodyMedium?.copyWith(
                color: AppColors.darkColor, fontWeight: FontWeight.w500),
            alignLabelWithHint: true,
            errorText: _errorText,
            errorStyle: _errorStyle ??
                textTheme.labelMedium?.copyWith(color: AppColors.redColor),
            prefixIcon: _prefixIcon,
            prefixIconConstraints: _prefixIconConstraints,
            suffixIcon: _suffixIcon,
            fillColor: _filledColor ?? AppColors.whiteColor,
            filled: true,
            errorMaxLines: 3,
            contentPadding: _contentPadding ??
                EdgeInsets.symmetric(vertical: 12.pv, horizontal: 16.ph),
            border: InputBorder.none,
          ),
          onChanged: _onChanged,
          validator: _validator,
        ),
      ),
    );
  }
}
