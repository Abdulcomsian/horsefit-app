import 'package:horse_fit/app/view_models/auth_view_models/sign_up/sign_up_bloc.dart';

import '../../../../core/constants/exports.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;
  late final TextEditingController _dobController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _dobController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _dobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'New User'),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 130.ph, vertical: 40.pv),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 71.h),

              ///! TODO Add profile image here
              const AvatarWidget(),
              SizedBox(height: 176.h),
              TextFormFieldWidget(
                controller: _nameController,
                textInputAction: TextInputAction.next,
                hintText: 'Name',
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.ph),
                  child: SvgPictureAssetWidget(ImagesResource.profileIcon,
                      size: 88.w),
                ),
                prefixIconConstraints: const BoxConstraints(),
                validator: (email) => locator<Validation>().validateName(email),
              ),
              SizedBox(height: 56.h),
              TextFormFieldWidget(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                hintText: 'Email',
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
              BlocBuilder<SignUpBloc, SignUpState>(
                builder: (context, state) {
                  return TextFormFieldWidget(
                    controller: _passwordController,
                    textInputAction: TextInputAction.next,
                    hintText: 'Password',
                    obscureText: state.isPasswordVisible,
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.ph),
                      child: SvgPictureAssetWidget(ImagesResource.lockIcon,
                          size: 88.w),
                    ),
                    prefixIconConstraints: const BoxConstraints(),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(42.ph),
                      child: SvgPictureAssetWidget(
                        ImagesResource.visibilityIcon,
                        size: 86.w,
                        isApplyColorFilter:
                            state.isPasswordVisible ? false : true,
                        color: AppColors.primaryColor,
                      ),
                    ).onTap(() => context
                        .read<SignUpBloc>()
                        .add(const SignUpEvent.togglePasswordVisibility())),
                    validator: (password) =>
                        locator<Validation>().validatePassword(password),
                  );
                },
              ),
              SizedBox(height: 56.h),
              BlocBuilder<SignUpBloc, SignUpState>(
                builder: (context, state) {
                  return TextFormFieldWidget(
                    controller: _confirmPasswordController,
                    textInputAction: TextInputAction.done,
                    hintText: 'Confirm Password',
                    obscureText: state.isConfirmPasswordVisible,
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.ph),
                      child: SvgPictureAssetWidget(ImagesResource.lockIcon,
                          size: 88.w),
                    ),
                    prefixIconConstraints: const BoxConstraints(),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(42.ph),
                      child: SvgPictureAssetWidget(
                        ImagesResource.visibilityIcon,
                        size: 86.w,
                        isApplyColorFilter:
                            state.isConfirmPasswordVisible ? false : true,
                        color: AppColors.primaryColor,
                      ),
                    ).onTap(() => context.read<SignUpBloc>().add(
                        const SignUpEvent.toggleConfirmPasswordVisibility())),
                    validator: (password) =>
                        locator<Validation>().validatePassword(
                      _passwordController.text.trim(),
                      isConfirmPassword: true,
                      confirmPassword: password,
                    ),
                  );
                },
              ),
              SizedBox(height: 106.h),
              BlocBuilder<SignUpBloc, SignUpState>(
                builder: (context, state) {
                  return Container(
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
                          onTap: () => context.read<SignUpBloc>().add(
                              const SignUpEvent.toggleGender(
                                  gender: Gender.male)),
                        ),
                        GenderSelectionButtonWidget(
                          icon: ImagesResource.femaleIcon,
                          btnText: 'Female',
                          isSelected:
                              state.gender == Gender.female ? true : false,
                          onTap: () => context.read<SignUpBloc>().add(
                              const SignUpEvent.toggleGender(
                                  gender: Gender.female)),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 130.h),
              TextFormFieldWidget(
                controller: _dobController,
                hintText: 'Date of Birth',
                enabled: false,
                suffixIcon: Padding(
                  padding: EdgeInsets.all(42.ph),
                  child: SvgPictureAssetWidget(ImagesResource.calendarIcon,
                      size: 86.w),
                ),
              ),
              SizedBox(height: 128.h),
              BlocBuilder<SignUpBloc, SignUpState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      UserTypeWidget(
                        icon: ImagesResource.horseTrainerIcon,
                        text: 'Horse\nTrainer',
                        isSelected: state.userType == UserType.horseTrainer
                            ? true
                            : false,
                        onTap: () => context.read<SignUpBloc>().add(
                            const SignUpEvent.selectUser(
                                userType: UserType.horseTrainer)),
                      ),
                      UserTypeWidget(
                        icon: ImagesResource.horseTrainerIcon,
                        text: 'Horse\nOwner',
                        isSelected: state.userType == UserType.horseOwner
                            ? true
                            : false,
                        onTap: () => context.read<SignUpBloc>().add(
                            const SignUpEvent.selectUser(
                                userType: UserType.horseOwner)),
                      ),
                      UserTypeWidget(
                        icon: ImagesResource.horseTrainerIcon,
                        text: 'Regular\nUser',
                        isSelected: state.userType == UserType.regularUser
                            ? true
                            : false,
                        onTap: () => context.read<SignUpBloc>().add(
                            const SignUpEvent.selectUser(
                                userType: UserType.regularUser)),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 192.h),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'By creating an account you agree to\n',
                    style: textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: 'Terms & conditions',
                        style: textTheme.titleMedium
                            ?.copyWith(decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap =
                              () => context.pushNamed(RouteNames.signUpView),
                      )
                    ]),
              ),
              SizedBox(height: 112.h),
              ButtonWidget(
                btnText: 'Create',
                onTap: () {
                  context.unfocusKeyboard();
                },
              ),
              SizedBox(height: 42.h),
            ],
          ),
        ),
      ),
    );
  }
}
