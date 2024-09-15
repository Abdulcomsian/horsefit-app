import 'package:flutter/cupertino.dart';

import '../../core/constants/exports.dart';

class ShowLoadingWidget extends StatelessWidget {
  const ShowLoadingWidget({
    super.key,
    double? radius,
    Color? color,
  })  : _radius = radius,
        _color = color;
  final double? _radius;
  final Color? _color;

  @override
  Widget build(BuildContext context) =>
      CupertinoActivityIndicator(radius: _radius ?? 36.r, color: _color);
}
