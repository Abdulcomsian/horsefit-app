import 'package:horse_fit/app/view_models/auth_view_models/sign_up/sign_up_bloc.dart';

import '../../../core/constants/exports.dart';

class ProfileInfoView extends StatefulWidget {
  const ProfileInfoView({super.key});

  @override
  State<ProfileInfoView> createState() => _ProfileInfoViewState();
}

class _ProfileInfoViewState extends State<ProfileInfoView> {
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _dobController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _dobController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _dobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Profile Info'),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 120.ph, vertical: 40.pv),
          child: BlocBuilder<SignUpBloc, SignUpState>(
            builder: (context, state) {
              return Column(
                children: [
                  SizedBox(height: 70.h),
                  AvatarWidget(isShowCameraIcon: state.isEditProfile),
                  SizedBox(height: 148.h),
                  TextFormFieldWidget(
                    controller: _nameController,
                    textInputAction: TextInputAction.next,
                    hintText: 'Name',
                    enabled: state.isEditProfile,
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.ph),
                      child: SvgPictureAssetWidget(ImagesResource.profileIcon,
                          size: 88.w),
                    ),
                    prefixIconConstraints: const BoxConstraints(),
                    validator: (email) =>
                        locator<Validation>().validateName(email),
                  ),
                  SizedBox(height: 56.h),
                  TextFormFieldWidget(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    hintText: 'Email',
                    enabled: state.isEditProfile,
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.ph),
                      child: SvgPictureAssetWidget(ImagesResource.emailIcon,
                          size: 88.w),
                    ),
                    prefixIconConstraints: const BoxConstraints(),
                    validator: (email) =>
                        locator<Validation>().validateEmail(email),
                  ),
                  SizedBox(height: 56.h),
                  TextFormFieldWidget(
                    controller: _dobController,
                    hintText: 'Date of Birth',
                    enabled: false,
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(42.ph),
                      child: SvgPictureAssetWidget(ImagesResource.calendarIcon,
                          size: 86.w),
                    ),
                  ).onTap(() {
                    if (state.isEditProfile) {
                      locator<DialogueUtils>()
                          .openDatePicker(context)
                          .then((dateOfBirth) {
                        ///! TODO Move this logic to bloc
                        if (dateOfBirth != null) {
                          _dobController.text = dateOfBirth;
                          setState(() {});
                        }
                      });
                    }
                  }),
                  SizedBox(height: 98.h),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20.ph, vertical: 20.pv),
                    decoration: BoxDecoration(
                      color: AppColors.grayColor,
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    child: Row(
                      children: [
                        GenderSelectionButtonWidget(
                          icon: ImagesResource.maleIcon,
                          btnText: 'Male',
                          isSelected:
                              state.gender == Gender.male ? true : false,
                          onTap: () {
                            if (state.isEditProfile) {
                              context.read<SignUpBloc>().add(
                                  const SignUpEvent.toggleGender(
                                      gender: Gender.male));
                            }
                          },
                        ),
                        GenderSelectionButtonWidget(
                          icon: ImagesResource.femaleIcon,
                          btnText: 'Female',
                          isSelected:
                              state.gender == Gender.female ? true : false,
                          onTap: () {
                            if (state.isEditProfile) {
                              context.read<SignUpBloc>().add(
                                  const SignUpEvent.toggleGender(
                                      gender: Gender.female));
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 146.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: WorkoutConfigurationCardWidget(
                          icon: ImagesResource.horseTrainerIcon,
                          text: 'Horse\nTrainer',
                          isSelected: state.userType == UserType.horseTrainer
                              ? true
                              : false,
                          onTap: () {
                            if (state.isEditProfile) {
                              context.read<SignUpBloc>().add(
                                  const SignUpEvent.selectUser(
                                      userType: UserType.horseTrainer));
                            }
                          },
                        ),
                      ),
                      SizedBox(width: 40.w),
                      Expanded(
                        child: WorkoutConfigurationCardWidget(
                          icon: ImagesResource.horseTrainerIcon,
                          text: 'Horse\nOwner',
                          isSelected: state.userType == UserType.horseOwner
                              ? true
                              : false,
                          onTap: () {
                            if (state.isEditProfile) {
                              context.read<SignUpBloc>().add(
                                  const SignUpEvent.selectUser(
                                      userType: UserType.horseOwner));
                            }
                          },
                        ),
                      ),
                      SizedBox(width: 40.w),
                      Expanded(
                        child: WorkoutConfigurationCardWidget(
                          icon: ImagesResource.horseTrainerIcon,
                          text: 'Regular\nUser',
                          isSelected: state.userType == UserType.regularUser
                              ? true
                              : false,
                          onTap: () {
                            if (state.isEditProfile) {
                              context.read<SignUpBloc>().add(
                                  const SignUpEvent.selectUser(
                                      userType: UserType.regularUser));
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 160.h),
                  TextViewWidget(
                    'Set new password',
                    style: textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor),
                  ),
                  SizedBox(height: 140.h),
                  ButtonWidget(
                    btnText: state.isEditProfile ? 'Save' : 'Edit',
                    onTap: () {
                      if (state.isEditProfile) {
                        context.unFocusKeyboard();

                        ///! TODO Call upload profile
                        context
                            .read<SignUpBloc>()
                            .add(const SignUpEvent.toggleEditProfile());
                      } else {
                        context
                            .read<SignUpBloc>()
                            .add(const SignUpEvent.toggleEditProfile());
                      }
                    },
                  ),
                  SizedBox(height: 42.h),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
