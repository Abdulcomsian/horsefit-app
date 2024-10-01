import '../../../../core/constants/exports.dart';

class ShotsWidget extends StatelessWidget {
  const ShotsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: 88.ph, right: 88.ph, top: 132.pv, bottom: 72.pv),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextViewWidget(
                'Shots',
                style: textTheme.displayMedium?.copyWith(
                  fontSize: 78.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
              TextViewWidget(
                'See All',
                style: textTheme.headlineSmall?.copyWith(
                  color: AppColors.primaryColor,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 400.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 88.ph),
              itemCount: 12,
              itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(right: index != 11 ? 56.ph : 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(54.r),
                      child: CachedNetworkImageWidget(
                        imageUrl: ConstantsResource.horseUrl,
                        size: 400.w,
                      ),
                    ),
                  )),
        )
      ],
    );
  }
}
