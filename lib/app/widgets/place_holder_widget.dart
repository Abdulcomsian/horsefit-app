import '../../core/constants/exports.dart';

class PlaceHolderWidget extends StatelessWidget {
  const PlaceHolderWidget({
    super.key,
    required Widget child,
    ScrollPhysics? physics,
    EdgeInsets? padding,
    int? length,
  })  : _child = child,
        _physics = physics,
        _padding = padding,
        _length = length;

  final Widget _child;
  final ScrollPhysics? _physics;
  final EdgeInsets? _padding;
  final int? _length;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: _physics ?? const NeverScrollableScrollPhysics(),
      padding: _padding ?? EdgeInsets.zero,
      child: Column(
        children: List.generate(
          _length ?? ConstantsResource.size,
          (index) =>
              Padding(padding: EdgeInsets.only(bottom: 20.pv), child: _child),
        ),
      ),
    );
  }
}
