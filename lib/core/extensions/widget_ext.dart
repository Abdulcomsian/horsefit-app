import '../constants/exports.dart';

extension SkeletonExtension on Widget {
  Widget applyShimmer({
    double? width = double.maxFinite,
    double? height,
    BorderRadius? borderRadius,
    Key? key,
  }) =>
      Skeleton.replace(
        replacement: Container(
          key: key,
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: borderRadius, color: Colors.transparent),
          child: const ColoredBox(color: Colors.black),
        ),
        child: this,
      );

  GestureDetector onTap(VoidCallback? onTap, {Key? key}) =>
      GestureDetector(key: key, onTap: onTap, child: this);

  /// Padding
  Padding paddingOnly({
    double left = 24.0,
    double top = 24.0,
    double right = 24.0,
    double bottom = 24.0,
    Key? key,
  }) =>
      Padding(
        key: key,
        padding:
            EdgeInsets.only(top: top, left: left, bottom: bottom, right: right),
        child: this,
      );

  Padding paddingSymmetric(
          {double vertical = 24.0, double horizontal = 24.0, Key? key}) =>
      Padding(
        key: key,
        padding:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );

  /// Align
  Align center({Key? key}) => Align(key: key, child: this);
  Align topLeft({Key? key}) =>
      Align(key: key, alignment: Alignment.topLeft, child: this);
  Align topRight({Key? key}) =>
      Align(key: key, alignment: Alignment.topRight, child: this);
  Align bottomLeft({Key? key}) =>
      Align(key: key, alignment: Alignment.bottomLeft, child: this);
  Align bottomRight({Key? key}) =>
      Align(key: key, alignment: Alignment.bottomRight, child: this);
  Align centerLeft({Key? key}) =>
      Align(key: key, alignment: Alignment.centerLeft, child: this);
  Align centerRight({Key? key}) =>
      Align(key: key, alignment: Alignment.centerRight, child: this);
  Align topCenter({Key? key}) =>
      Align(key: key, alignment: Alignment.topCenter, child: this);
  Align bottomCenter({Key? key}) =>
      Align(key: key, alignment: Alignment.bottomCenter, child: this);
}
