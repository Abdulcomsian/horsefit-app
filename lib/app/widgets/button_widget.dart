import 'package:flutter/cupertino.dart';

import '../../core/constants/exports.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required String btnText,
    required VoidCallback onTap,
    Widget? child,
    double? width,
    double? height,
    Color? color,
    Color? textColor,
    Color? borderColor,
    FontWeight? fontWeight,
    TextStyle? style,
    isShowBorder = false,
    double? radius,
    EdgeInsetsGeometry? margin,
    bool isShowLoading = false,
    double? borderWidth,
  })  : _btnText = btnText,
        _child = child,
        _onTap = onTap,
        _width = width,
        _height = height,
        _color = color,
        _textColor = textColor,
        _borderColor = borderColor,
        _fontWeight = fontWeight,
        _style = style,
        _radius = radius,
        _isShowBorder = isShowBorder,
        _margin = margin,
        _isShowLoading = isShowLoading,
        _borderWidth = borderWidth;

  final String _btnText;
  final Widget? _child;
  final VoidCallback _onTap;
  final double? _width;
  final double? _height;
  final Color? _color;
  final Color? _textColor;
  final Color? _borderColor;
  final FontWeight? _fontWeight;
  final TextStyle? _style;
  final bool _isShowBorder;
  final double? _radius;
  final EdgeInsetsGeometry? _margin;
  final bool _isShowLoading;
  final double? _borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width ?? double.maxFinite,
      height: _height ?? 40.h,
      alignment: Alignment.center,
      margin: _margin,
      decoration: BoxDecoration(
          color: _color ?? Theme.of(context).primaryColor,
          border: _isShowBorder
              ? Border.all(
                  width: _borderWidth ?? 0.5.w,
                  color: _borderColor ?? AppColors.primaryColor)
              : null,
          borderRadius: BorderRadius.circular(_radius ?? 8.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_isShowLoading)
            Row(
              children: [
                CupertinoActivityIndicator(
                  color: _textColor ?? AppColors.whiteColor,
                  radius: 10.h,
                ),
                SizedBox(width: 6.w),
                TextViewWidget('Please Wait...',
                    style: _style ??
                        textTheme.labelLarge?.copyWith(
                          color: _textColor ?? AppColors.whiteColor,
                          fontWeight: _fontWeight ?? FontWeight.w600,
                        )),
              ],
            ),
          if (!_isShowLoading)
            _child ??
                TextViewWidget(
                  _btnText,
                  style: _style ??
                      textTheme.labelLarge?.copyWith(
                        color: _textColor ?? AppColors.whiteColor,
                        fontWeight: _fontWeight ?? FontWeight.w600,
                      ),
                ),
        ],
      ),
    ).onTap(!_isShowLoading ? _onTap : () {});
  }
}
