import '../../../../core/constants/exports.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 82.ph),
          child: Row(
            children: [
              CachedNetworkImageWidget(
                imageUrl:
                    'https://plus.unsplash.com/premium_photo-1664536392896-cd1743f9c02c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
                size: 140.w,
                borderRadius: BorderRadius.circular(100.r),
              ).applyShimmer(width: 140.w, height: 140.w),
              SizedBox(width: 38.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextViewWidget(
                    'Kamran Khan',
                    style: textTheme.titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextViewWidget(
                    '56 minutes ago',
                    style: textTheme.titleSmall?.copyWith(
                      color: AppColors.darkColor.withOpacity(0.3),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 38.w),
              const Spacer(),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 24.ph, vertical: 24.pv),
                decoration: BoxDecoration(
                  color: const Color(0xFFEAEAEB),
                  borderRadius: BorderRadius.circular(36.r),
                ),
                child: const Icon(Icons.more_horiz),
              )
            ],
          ),
        ),
        SizedBox(height: 12.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 82.ph, vertical: 42.pv),
          child: TextViewWidget(
            'This is a landscape photo or video. Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English',
            style: textTheme.titleMedium,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 82.ph),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...List.generate(
                images.length,
                (index) => Padding(
                  padding: EdgeInsets.only(right: 16.ph),
                  child: CachedNetworkImageWidget(
                    imageUrl: images[index],
                    width: 1240.w,
                    borderRadius: BorderRadius.circular(76.r),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 42.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 82.ph),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPictureAssetWidget(ImagesResource.heartIcon, size: 84.w),
                  SizedBox(width: 12.w),
                  TextViewWidget(
                    '4 likes',
                    style: textTheme.titleSmall
                        ?.copyWith(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Row(
                children: [
                  SvgPictureAssetWidget(ImagesResource.commentIcon, size: 84.w),
                  SizedBox(width: 12.w),
                  TextViewWidget(
                    '7 Comments',
                    style: textTheme.titleSmall
                        ?.copyWith(fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

///! TODO Remove this if not needed
final images = [
  ConstantsResource.horseUrl,
  ConstantsResource.horseUrl,
  ConstantsResource.horseUrl,
  ConstantsResource.horseUrl,
  ConstantsResource.horseUrl,
];
