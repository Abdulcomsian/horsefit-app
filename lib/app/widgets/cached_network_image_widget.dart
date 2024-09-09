import '../../core/constants/exports.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  const CachedNetworkImageWidget({
    super.key,
    required String imageUrl,
    BoxFit fit = BoxFit.cover,
    double? width,
    double? height,
    double? size,
    BorderRadiusGeometry? borderRadius,
    Widget? errorWidget,
  })  : _imageUrl = imageUrl,
        _width = width,
        _height = height,
        _size = size,
        _borderRadius = borderRadius,
        _fit = fit,
        _errorWidget = errorWidget;

  final String _imageUrl;
  final BoxFit _fit;
  final double? _width, _height, _size;
  final BorderRadiusGeometry? _borderRadius;
  final Widget? _errorWidget;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: _borderRadius ?? BorderRadius.circular(8.r),
      child: CachedNetworkImage(
        imageUrl: _imageUrl,
        width: _size ?? _width ?? double.maxFinite,
        height: _size ?? _height,
        fit: _fit,
        placeholder: (context, url) => Container(
          width: _width,
          height: _height,
          color: Colors.white,
        ),
        errorWidget: (context, url, error) => Container(
          width: _width ?? double.maxFinite,
          height: _height,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.redColor),
            borderRadius: _borderRadius,
          ),
          child: _errorWidget ??
              const Icon(
                Icons.error_outline,
                color: AppColors.redColor,
              ),
        ),
      ),
    ).applyShimmer(width: _width ?? double.maxFinite, height: _height);
  }
}
