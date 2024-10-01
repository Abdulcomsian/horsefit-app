import '../../../../../core/constants/exports.dart';

class IntervalDetailsWidget extends StatelessWidget {
  const IntervalDetailsWidget(
      {super.key, required String title, time, Color? titleColor})
      : _title = title,
        _time = time,
        _titleColor = titleColor;

  final String _title, _time;
  final Color? _titleColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 62.ph, right: 62.ph, bottom: 30.pv),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextViewWidget(_title,
              style: textTheme.titleMedium?.copyWith(color: _titleColor)),
          TextViewWidget(_time, style: textTheme.titleLarge),
        ],
      ),
    );
  }
}
