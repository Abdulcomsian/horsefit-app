import '../../../core/constants/exports.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key, bool isShowCameraIcon = true})
      : _isShowCameraIcon = isShowCameraIcon;

  final bool _isShowCameraIcon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          width: 400.w,
          height: 400.w,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                ImagesResource.avatarPlaceHolderImg,
              ))),
        ),
        if (_isShowCameraIcon)
          Container(
            padding: EdgeInsets.all(12.ph),
            decoration: const BoxDecoration(
              color: AppColors.whiteColor,
              shape: BoxShape.circle,
            ),
            child: Container(
              width: 142.w,
              height: 142.w,
              padding: EdgeInsets.all(28.ph),
              decoration: const BoxDecoration(
                color: AppColors.darkColor,
                shape: BoxShape.circle,
              ),
              child: const SvgPictureAssetWidget(ImagesResource.cameraIcon),
            ),
          )
      ],
    );
  }
}
