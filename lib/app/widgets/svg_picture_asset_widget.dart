import '../../core/constants/exports.dart';

class SvgPictureAssetWidget extends StatelessWidget {
  const SvgPictureAssetWidget(
    String assetName, {
    super.key,
    BoxFit? fit,
    Color? color,
    bool isApplyColorFilter = false,
    double? size,
    double? width,
    double? height,
  })  : _assetName = assetName,
        _fit = fit,
        _color = color,
        _isApplyColorFilter = isApplyColorFilter,
        _size = size,
        _width = width,
        _height = height;

  final String _assetName;
  final BoxFit? _fit;
  final Color? _color;
  final bool _isApplyColorFilter;
  final double? _size, _width, _height;

  @override
  Widget build(BuildContext context) => SvgPicture.asset(
        _assetName,
        width: _size ?? _width,
        height: _size ?? _height,
        fit: _fit ?? BoxFit.scaleDown,
        colorFilter: _isApplyColorFilter
            ? ColorFilter.mode(_color ?? AppColors.whiteColor, BlendMode.srcIn)
            : null,
      );
}
