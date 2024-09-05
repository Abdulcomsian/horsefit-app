import '../../core/constants/exports.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required String title,
    Color? bgColor,
    textColor,
    VoidCallback? onLeadingTap,
    Widget? leading,
    bool isShowLeading = true,
    Widget? titleWidget,
    bool? centerTitle = false,
    double? leadingWidth,
    List<Widget>? actions,
    PreferredSize? bottom,
    double? height,
    bool automaticallyImplyLeading = true,
    double? elevation,
  })  : _title = title,
        _bgColor = bgColor,
        _textColor = textColor,
        _onLeadingTap = onLeadingTap,
        _leading = leading,
        _isShowLeading = isShowLeading,
        _titleWidget = titleWidget,
        _centerTitle = centerTitle,
        _leadingWidth = leadingWidth,
        _actions = actions,
        _bottom = bottom,
        _height = height,
        _automaticallyImplyLeading = automaticallyImplyLeading,
        _elevation = elevation;

  final String _title;
  final Color? _bgColor, _textColor;
  final VoidCallback? _onLeadingTap;
  final Widget? _leading;
  final bool _isShowLeading;
  final Widget? _titleWidget;
  final bool? _centerTitle;
  final double? _leadingWidth;
  final List<Widget>? _actions;
  final PreferredSize? _bottom;
  final double? _height;
  final bool _automaticallyImplyLeading;
  final double? _elevation;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: _automaticallyImplyLeading,
      backgroundColor: _bgColor ?? AppColors.whiteColor,
      elevation: _elevation ?? 0.0,
      centerTitle: _centerTitle,
      leadingWidth: !_isShowLeading ? 20.w : _leadingWidth,
      titleSpacing: 0.0,
      leading: _isShowLeading
          ? Container(
              color: Colors.transparent,
              child: _leading ??
                  Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.grayColor,
                    size: 24.h,
                  ),
            ).onTap(_onLeadingTap ?? () => context.pop())
          : const SizedBox.shrink(),
      title: _titleWidget ??
          TextViewWidget(_title,
              style: textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: _textColor ?? Theme.of(context).primaryColor)),
      actions: _actions,
      bottom: _bottom,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_height ?? 56.h);
}
