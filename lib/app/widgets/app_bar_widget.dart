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
    bool? centerTitle = true,
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
          ? _leading ??
              Container(
                margin: EdgeInsets.only(left: 24.ph, top: 24.pv),
                padding:
                    EdgeInsets.symmetric(horizontal: 56.ph, vertical: 56.pv),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border:
                      Border.all(color: AppColors.darkColor.withOpacity(0.1)),
                ),
                child:
                    const SvgPictureAssetWidget(ImagesResource.arrowBackIcon),
              ).onTap(_onLeadingTap ?? () => context.pop())
          : const SizedBox.shrink(),
      title: _titleWidget ??
          TextViewWidget(_title,
              style: textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: _textColor ?? AppColors.darkColor)),
      actions: _actions,
      bottom: _bottom,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_height ?? 260.h);
}
