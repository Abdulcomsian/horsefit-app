import '../../../core/constants/exports.dart';

class FeedView extends StatefulWidget {
  const FeedView({super.key});

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  final GlobalKey<ScaffoldState> _feedScaffoldKey = GlobalKey();

  ///! TODO Replace the dynamic with model
  late PagingController<int, PostModel> _pagingController;

  @override
  initState() {
    super.initState();
    _pagingController = PagingController(firstPageKey: 1);
    _pagingController.addPageRequestListener(
      (pageKey) => WidgetsBinding.instance.addPostFrameCallback((_) {}),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _feedScaffoldKey,
      drawer: const MenuView(),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const FeedHeaderWidget(),
            // Flexible(
            //     child: PagedListViewWidget(
            //   pagingController: _pagingController,
            //   physics: const BouncingScrollPhysics(),
            //   padding: EdgeInsets.only(top: 112.pv, bottom: 62.pv),
            //   itemBuilder: (context, item, index) => const PostWidget(),
            //   placeHolderWidget: const PostWidget(),
            // )),
            Flexible(
                child: ListView.separated(
              itemCount: 10,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(top: 112.pv, bottom: 62.pv),
              itemBuilder: (context, index) => const PostWidget(),
              separatorBuilder: (context, index) => SizedBox(height: 132.h),
            )),
          ],
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.whiteColor, width: 3.w),
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
          backgroundColor: AppColors.redColor,
          onPressed: () => context.pushNamed(RouteNames.createPostView),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
