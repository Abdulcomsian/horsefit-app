import '../../core/constants/exports.dart';

class LabeledTextFormFieldWidget extends StatelessWidget {
  const LabeledTextFormFieldWidget({
    super.key,
    required this.label,
    required this.controller,
    required this.hintText,
    this.trailingWidget,
    this.errorText,
    this.enabled,
    this.suffixIcon,
    this.autovalidateMode,
    this.obscureText,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.validator,
  });

  final String label;
  final Widget? trailingWidget;
  final TextEditingController controller;
  final String hintText;
  final String? errorText;
  final bool? enabled;
  final Widget? suffixIcon;
  final AutovalidateMode? autovalidateMode;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Function(String? value)? onChanged;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextViewWidget(label, style: textTheme.labelLarge),
        SizedBox(height: 10.h),
        TextFormFieldWidget(
          controller: controller,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          hintText: hintText,
          errorText: errorText,
          enabled: enabled,
          suffixIcon: suffixIcon,
          autovalidateMode: autovalidateMode,
          obscureText: obscureText,
          onChanged: onChanged,
          validator: validator,
        ),
      ],
    );
  }
}
