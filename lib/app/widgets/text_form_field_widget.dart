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
    AutovalidateMode? autovalidateMode,
    int? maxLines,
    bool isMaxLinesNoLimit = false,
    TextStyle? errorStyle,
    EdgeInsetsGeometry? contentPadding,
    Color? filledColor,
    InputBorder? border,
    TextAlignVertical? textAlignVertical,
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
        _autovalidateMode = autovalidateMode,
        _maxLines = maxLines,
        _isMaxLinesNoLimit = isMaxLinesNoLimit,
        _errorStyle = errorStyle,
        _contentPadding = contentPadding,
        _filledColor = filledColor,
        _border = border,
        _textAlignVertical = textAlignVertical,
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
  final int? _maxLines;
  final bool _isMaxLinesNoLimit;
  final TextStyle? _errorStyle;
  final EdgeInsetsGeometry? _contentPadding;
  final Color? _filledColor;
  final InputBorder? _border;
  final TextAlignVertical? _textAlignVertical;
  final Function(String? value)? _onChanged;
  final String? Function(String? value)? _validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: _onTap,
      controller: _controller,
      textInputAction: _textInputAction ?? TextInputAction.done,
      autovalidateMode: _autovalidateMode ?? AutovalidateMode.onUserInteraction,
      enabled: _enabled,
      keyboardType: _keyboardType ?? TextInputType.text,
      obscureText: _obscureText ?? false,
      maxLines: _isMaxLinesNoLimit ? null : _maxLines ?? 1,
      style: _style ??
          textTheme.titleLarge?.copyWith(
              color: AppColors.darkColor, fontWeight: FontWeight.w500),
      textAlignVertical: _textAlignVertical ?? TextAlignVertical.center,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        hintText: _hintText ?? '',
        hintStyle: _hintStyle ??
            textTheme.titleLarge?.copyWith(
                color: AppColors.darkColor.withOpacity(0.5),
                fontWeight: FontWeight.w500),
        labelText: _labelText,
        labelStyle: textTheme.bodyMedium
            ?.copyWith(color: AppColors.darkColor, fontWeight: FontWeight.w500),
        alignLabelWithHint: true,
        errorText: _errorText,
        errorStyle: _errorStyle ??
            textTheme.titleLarge?.copyWith(color: AppColors.redColor),
        prefixIcon: _prefixIcon,
        prefixIconConstraints: _prefixIconConstraints,
        suffixIcon: _suffixIcon,
        fillColor: _filledColor ?? AppColors.whiteColor,
        filled: true,
        errorMaxLines: 3,
        contentPadding:
            _contentPadding ?? EdgeInsets.symmetric(horizontal: 48.ph),
        border: _border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.r),
              borderSide: const BorderSide(color: AppColors.primaryColor),
            ),
        focusedBorder: _border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.r),
              borderSide: const BorderSide(color: AppColors.primaryColor),
            ),
        errorBorder: _border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.r),
              borderSide: const BorderSide(color: AppColors.redColor),
            ),
        focusedErrorBorder: _border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.r),
              borderSide: const BorderSide(color: AppColors.primaryColor),
            ),
        enabledBorder: _border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.r),
              borderSide: const BorderSide(color: AppColors.grayColor),
            ),
        disabledBorder: _border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.r),
              borderSide: const BorderSide(color: AppColors.grayColor),
            ),
      ),
      onChanged: _onChanged,
      validator: _validator,
    );
  }
}
