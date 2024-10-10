import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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
                alignment: Alignment.center,
                padding:
                    EdgeInsets.symmetric(horizontal: 12.ph, vertical: 12.pv),
                decoration: BoxDecoration(
                  color: const Color(0xFFEAEAEB),
                  borderRadius: BorderRadius.circular(36.r),
                ),
                child: const Icon(Icons.more_horiz),
              ).onTap(() {
                showBarModalBottomSheet(
                    context: context,
                    topControl: const SizedBox.shrink(),
                    builder: (c) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 92.ph,
                          vertical: 62.pv,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 156.w,
                              height: 18.h,
                              decoration: BoxDecoration(
                                color: AppColors.darkColor,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            SizedBox(height: 158.h),
                            const ReportSheetCardWidget(
                              icon: ImagesResource.closeCircleIcon,
                              text: 'UnFollow  Jane Doe',
                            ),
                            SizedBox(height: 36.h),
                            const ReportSheetCardWidget(
                              icon: ImagesResource.flagIcon,
                              text: 'Report',
                            ).onTap(() {
                              context.pop();
                              context.pushNamed(RouteNames.reportPostView);
                            }),
                            SizedBox(height: 132.h),
                          ],
                        ),
                      );
                    });
              }),
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

        ///! TODO Setup this
        //  IntrinsicHeight(
        //   child: PageView.builder(
        //     physics: const BouncingScrollPhysics(),
        //     itemCount: images.length,
        //     onPageChanged: (index) {
        //       logger.i(index);
        //     },
        //     itemBuilder: (context, index) {
        //       return Container(
        //         margin:
        //             EdgeInsets.symmetric(horizontal: 82.ph, vertical: 42.pv),
        //         child: CachedNetworkImageWidget(
        //           imageUrl: images[index],
        //           borderRadius: BorderRadius.circular(76.r),
        //         ),
        //       );
        //     },
        //   ),
        // ),

        Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(left: 82.ph, right: 92.ph),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...List.generate(
                    images.length,
                    (index) => Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: index == images.length - 1 ? 0.0 : 132.ph),
                          child: InteractiveViewer(
                            child: CachedNetworkImageWidget(
                              imageUrl: images[index],
                              width: 1244.w,
                              borderRadius: BorderRadius.circular(76.r),
                            ),
                          ),
                        ),

                        ///! Don't move this when images swipe
                        Positioned(
                          left: 82.ph,
                          bottom: 52.pv,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 18.ph, vertical: 12.pv),
                            decoration: BoxDecoration(
                              color: AppColors.darkColor,
                              borderRadius: BorderRadius.circular(24.r),
                            ),
                            child: Row(
                              children: [
                                ...List.generate(
                                  images.length,
                                  (i) => Container(
                                    width: i == index ? 82.w : 20.w,
                                    height: 16.h,
                                    margin: EdgeInsets.only(right: 18.ph),
                                    decoration: BoxDecoration(
                                      color: i == index
                                          ? AppColors.whiteColor
                                          : AppColors.whiteColor
                                              .withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(24.r),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
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

class ReportSheetCardWidget extends StatelessWidget {
  const ReportSheetCardWidget({
    super.key,
    required String icon,
    required String text,
    String? trailing,
  })  : _icon = icon,
        _text = text,
        _trailing = trailing;

  final String _icon, _text;
  final String? _trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 84.ph, vertical: 84.pv),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        borderRadius: BorderRadius.circular(66.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPictureAssetWidget(_icon, size: 92.w),
          TextViewWidget(_text, style: textTheme.titleLarge),
          _trailing != null
              ? SvgPictureAssetWidget(_trailing)
              : const SizedBox.shrink(),
        ],
      ),
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
