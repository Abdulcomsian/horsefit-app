import '../../../../core/constants/exports.dart';

class SearchOwnerAndTrainerView extends StatefulWidget {
  const SearchOwnerAndTrainerView({super.key});

  @override
  State<SearchOwnerAndTrainerView> createState() =>
      _SearchOwnerAndTrainerViewState();
}

class _SearchOwnerAndTrainerViewState extends State<SearchOwnerAndTrainerView> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Add owner/trainer'),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 120.ph, vertical: 120.pv),
            child: TextFormFieldWidget(
              controller: _searchController,
              hintText: 'Search a person by email or name',
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.ph),
                child: SvgPictureAssetWidget(
                  ImagesResource.searchIcon,
                  size: 72.w,
                ),
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                padding:
                    EdgeInsets.symmetric(horizontal: 120.ph, vertical: 80.pv),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => const SearchedUserTileWidget()
                    .onTap(() =>
                        context.pushNamed(RouteNames.roleOwnerOrTrainerView))),
          )
        ],
      ),
    );
  }
}
