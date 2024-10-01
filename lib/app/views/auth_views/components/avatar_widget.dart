import '../../../../core/constants/exports.dart';
import '../../../view_models/auth_view_models/sign_up/sign_up_bloc.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key, bool isShowCameraIcon = true})
      : _isShowCameraIcon = isShowCameraIcon;

  final bool _isShowCameraIcon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        BlocBuilder<SignUpBloc, SignUpState>(
          builder: (context, state) {
            return Container(
              width: 400.w,
              height: 400.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: (state.profilePath != null &&
                          (state.profilePath?.isNotEmpty ?? false))
                      ? FileImage(File(state.profilePath ?? ''))
                      : const AssetImage(ImagesResource.avatarPlaceHolderImg),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
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
          ).onTap(() async {
            await locator<BottomSheetUtils>().pickImageBottomSheet(
              context,
              uploadPickedMedia: (profileImage, _) {
                logger.i(profileImage);

                context
                    .read<SignUpBloc>()
                    .add(SignUpEvent.pickProfile(profilePath: profileImage));
              },
            );
          })
      ],
    );
  }
}
