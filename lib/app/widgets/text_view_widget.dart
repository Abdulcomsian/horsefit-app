import '../../core/constants/exports.dart';

class TextViewWidget extends StatelessWidget {
  const TextViewWidget(
    String text, {
    super.key,
    TextStyle? style,
    bool isEllipsis = false,
    this.textScaleFactor = false,
    this.maxLines,
    TextAlign? align,
  })  : _text = text,
        _style = style,
        _align = align,
        _isEllipsis = isEllipsis;

  final String _text;
  final TextStyle? _style;
  final TextAlign? _align;
  final bool _isEllipsis;
  final bool textScaleFactor;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      textScaler: textScaleFactor ? const TextScaler.linear(1.0) : null,
      overflow: _isEllipsis ? TextOverflow.ellipsis : null,
      softWrap: true,
      style: _style ?? textTheme.labelMedium,
      maxLines: maxLines,
      textHeightBehavior:
          const TextHeightBehavior(applyHeightToFirstAscent: false),
      textAlign: _align,
    );
  }
}
