import 'package:flutter/cupertino.dart';

import '../../core/constants/exports.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required String btnText,
    required VoidCallback onTap,
    Widget? child,
    double? width,
    Color? color,
    Color? textColor,
    Color? borderColor,
    FontWeight? fontWeight,
    TextStyle? style,
    isShowBorder = false,
    double? radius,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    bool isShowLoading = false,
    bool isZeroWidth = false,
    double? borderWidth,
    Widget? icon,
  })  : _icon = icon,
        _btnText = btnText,
        _child = child,
        _onTap = onTap,
        _width = width,
        _color = color,
        _textColor = textColor,
        _borderColor = borderColor,
        _fontWeight = fontWeight,
        _style = style,
        _radius = radius,
        _isShowBorder = isShowBorder,
        _margin = margin,
        _padding = padding,
        _isShowLoading = isShowLoading,
        _isZeroWidth = isZeroWidth,
        _borderWidth = borderWidth;

  final Widget? _icon;
  final String _btnText;
  final Widget? _child;
  final VoidCallback _onTap;
  final double? _width;
  final Color? _color;
  final Color? _textColor;
  final Color? _borderColor;
  final FontWeight? _fontWeight;
  final TextStyle? _style;
  final bool _isShowBorder;
  final double? _radius;
  final EdgeInsetsGeometry? _margin;
  final EdgeInsetsGeometry? _padding;
  final bool _isShowLoading;
  final bool _isZeroWidth;
  final double? _borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: !_isZeroWidth ? _width ?? double.maxFinite : null,
      alignment: Alignment.center,
      margin: _margin,
      padding: _padding ?? EdgeInsets.symmetric(vertical: 72.pv),
      decoration: BoxDecoration(
          color: _color ??
              (_isShowBorder
                  ? Colors.transparent
                  : Theme.of(context).primaryColor),
          gradient: (_isShowBorder || _color != null)
              ? null
              : const LinearGradient(colors: [
                  Color(0xFF3AC2C2),
                  Color(0xFF18B5D6),
                ]),
          border: _isShowBorder
              ? Border.all(
                  width: _borderWidth ?? 1.2.w,
                  color: _borderColor ?? AppColors.primaryColor)
              : null,
          borderRadius: BorderRadius.circular(_radius ?? 100.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_isShowLoading)
            Row(
              children: [
                CupertinoActivityIndicator(
                  color: _textColor ?? AppColors.whiteColor,
                  radius: 32.h,
                ),
                SizedBox(width: 24.w),
                TextViewWidget('Please Wait',
                    style: _style ??
                        textTheme.titleLarge?.copyWith(
                          color: _textColor ?? AppColors.whiteColor,
                          fontWeight: _fontWeight ?? FontWeight.w600,
                          fontSize: 54.sp,
                        )),
              ],
            ),
          if (!_isShowLoading)
            Row(
              children: [
                if (_icon != null) _icon,
                if (_icon != null) SizedBox(width: 20.w),
                _child ??
                    TextViewWidget(
                      _btnText,
                      style: _style ??
                          textTheme.labelLarge?.copyWith(
                            color: _textColor ?? AppColors.whiteColor,
                            fontWeight: _fontWeight ?? FontWeight.w600,
                            fontSize: 54.sp,
                          ),
                    ),
              ],
            ),
        ],
      ),
    ).onTap(!_isShowLoading ? _onTap : () {});
  }
}
