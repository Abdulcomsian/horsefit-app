import '../../../../core/constants/exports.dart';

class MessageCenterSelectableCardWidget extends StatelessWidget {
  const MessageCenterSelectableCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.ph, vertical: 20.pv),
      margin: EdgeInsets.symmetric(horizontal: 92.ph),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Row(
        children: [
          _ToggleButtonWidget(
            count: 10,
            btnText: 'Messages',
            isSelected: true,
            // state.gender == Gender.male ? true : false,
            onTap: () {},
          ),
          _ToggleButtonWidget(
            count: 0,
            btnText: 'Notifications',
            isSelected: false,
            // state.gender == Gender.female ? true : false,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _ToggleButtonWidget extends StatelessWidget {
  const _ToggleButtonWidget({
    required int count,
    required String btnText,
    required bool isSelected,
    required VoidCallback onTap,
  })  : _count = count,
        _btnText = btnText,
        _isSelected = isSelected,
        _onTap = onTap;

  final int _count;
  final String _btnText;
  final bool _isSelected;
  final VoidCallback _onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ButtonWidget(
      icon: _count > 0
          ? Padding(
              padding: EdgeInsets.only(right: 20.ph),
              child: Badge.count(
                count: _count,
                backgroundColor: AppColors.primaryColor,
                textStyle: textTheme.labelLarge,
              ),
            )
          : const SizedBox.shrink(),
      btnText: _btnText,
      color: _isSelected ? AppColors.darkColor : Colors.transparent,
      textColor: _isSelected ? AppColors.whiteColor : AppColors.darkColor,
      onTap: _onTap,
    ));
  }
}
