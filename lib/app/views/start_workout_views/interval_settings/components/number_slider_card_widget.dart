import '../../../../../core/constants/exports.dart';

class NumberSliderCardWidget extends StatelessWidget {
  const NumberSliderCardWidget({
    super.key,
    required int value,
    required String trailing,
    required Function(int) onChanged,
  })  : _value = value,
        _trailing = trailing,
        _onChanged = onChanged;

  final int _value;
  final String _trailing;
  final Function(int) _onChanged;

  @override
  Widget build(BuildContext context) {
    return NumberPicker(
      value: _value,
      infiniteLoop: true,
      minValue: 1,
      maxValue: 30,
      itemWidth: double.maxFinite,
      textStyle: textTheme.headlineLarge
          ?.copyWith(color: AppColors.darkColor.withOpacity(0.4)),
      selectedTextStyle: textTheme.headlineLarge,
      textMapper: (value) =>
          '$value  ${_value == int.tryParse(value) ? _trailing : '            '}',
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 0.4, color: Color(0xFF8B8B8B)),
          bottom: BorderSide(width: 0.4, color: Color(0xFF8B8B8B)),
        ),
      ),
      onChanged: _onChanged,
    );
  }
}
