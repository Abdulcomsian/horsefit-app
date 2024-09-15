import '../../core/constants/exports.dart';

class PagedListViewWidget<K, T> extends StatelessWidget {
  const PagedListViewWidget({
    super.key,
    required PagingController<K, T> pagingController,
    required Widget Function(BuildContext context, T item, int index)
        itemBuilder,
    required Widget placeHolderWidget,
    String? noMoreItemsText,
    Widget? noItemsFound,
    ScrollPhysics? physics,
    EdgeInsetsGeometry? padding,
  })  : _pagingController = pagingController,
        _itemBuilder = itemBuilder,
        _placeHolderWidget = placeHolderWidget,
        _noMoreItemsText = noMoreItemsText,
        _noItemsFound = noItemsFound,
        _physics = physics,
        _padding = padding;

  final PagingController<K, T> _pagingController;
  final Widget Function(BuildContext context, T item, int index) _itemBuilder;
  final Widget _placeHolderWidget;
  final Widget? _noItemsFound;
  final String? _noMoreItemsText;
  final ScrollPhysics? _physics;
  final EdgeInsetsGeometry? _padding;

  @override
  Widget build(BuildContext context) {
    return PagedListView.separated(
      pagingController: _pagingController,
      physics: _physics ?? const BouncingScrollPhysics(),
      padding:
          _padding ?? EdgeInsets.symmetric(horizontal: 24.ph, vertical: 24.pv),
      shrinkWrap: true,
      builderDelegate: PagedChildBuilderDelegate<T>(
        itemBuilder: _itemBuilder,
        firstPageProgressIndicatorBuilder: (context) =>
            Skeletonizer(child: _placeHolderWidget),
        newPageProgressIndicatorBuilder: (context) =>
            Skeletonizer(child: _placeHolderWidget),
        noItemsFoundIndicatorBuilder: (context) =>
            _noItemsFound ?? const TextViewWidget('No items found'),
        noMoreItemsIndicatorBuilder: (context) => Center(
            child: Padding(
          padding: EdgeInsets.only(bottom: 40.pv),
          child: TextViewWidget(
              _noMoreItemsText ?? 'keine weiteren Daten gefunden.',
              align: TextAlign.center,
              style: textTheme.labelLarge
                  ?.copyWith(color: AppColors.grayColor.withOpacity(0.6))),
        )),
        firstPageErrorIndicatorBuilder: (context) => Row(
          children: [
            TextViewWidget(
                _pagingController.error ??
                    'Etwas ist schief gelaufen! Versuchen Sie es noch einmal.',
                style: textTheme.labelLarge),
            TextViewWidget('Nochmals versuchen',
                    style: textTheme.labelLarge
                        ?.copyWith(color: AppColors.primaryColor))
                .onTap(() => _pagingController.refresh())
          ],
        ),
        newPageErrorIndicatorBuilder: (context) => Row(
          children: [
            TextViewWidget(
                _pagingController.error ??
                    'Etwas ist schief gelaufen! Versuchen Sie es noch einmal.',
                style: textTheme.labelLarge),
            TextViewWidget('Nochmals versuchen',
                    style: textTheme.labelLarge
                        ?.copyWith(color: AppColors.primaryColor))
                .onTap(() => _pagingController.retryLastFailedRequest())
          ],
        ),
      ),
      separatorBuilder: (context, index) => SizedBox(height: 20.h),
    );
  }
}
