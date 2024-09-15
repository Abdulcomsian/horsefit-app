import '../../../../core/constants/exports.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _loginFormKey = GlobalKey<FormState>();
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) => _listener(state, context),
        child: SafeArea(
          child: SizedBox.expand(
            child: SingleChildScrollView(
              padding:
                  EdgeInsets.symmetric(horizontal: 130.ph, vertical: 40.pv),
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: _loginFormKey,
                child: Column(
                  children: [
                    SizedBox(height: 132.h),
                    SvgPictureAssetWidget(ImagesResource.logoIcon,
                        width: 560.w),
                    SizedBox(height: 230.h),
                    TextViewWidget(
                      'Welcome back! Glad to see you, Again!',
                      align: TextAlign.center,
                      style: textTheme.displayLarge,
                    ),
                    SizedBox(height: 230.h),
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
                    SizedBox(height: 76.h),
                    BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        return TextFormFieldWidget(
                          controller: _passwordController,
                          textInputAction: TextInputAction.done,
                          obscureText: state.isPasswordVisible,
                          hintText: 'Password',
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 32.ph),
                            child: SvgPictureAssetWidget(
                                ImagesResource.lockIcon,
                                size: 88.w),
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(42.ph),
                            child: SvgPictureAssetWidget(
                              ImagesResource.visibilityIcon,
                              size: 86.w,
                              isApplyColorFilter:
                                  state.isPasswordVisible ? false : true,
                              color: AppColors.primaryColor,
                            ),
                          ).onTap(() => context.read<LoginBloc>().add(
                              const LoginEvent.togglePasswordVisibility())),
                          prefixIconConstraints: const BoxConstraints(),
                          validator: (password) =>
                              locator<Validation>().validatePassword(password),
                        );
                      },
                    ),
                    SizedBox(height: 50.h),
                    TextViewWidget(
                      'Forgot Password?',
                      style: textTheme.titleLarge?.copyWith(
                        color: AppColors.primaryColor,
                        decoration: TextDecoration.underline,
                      ),
                    ).centerRight().onTap(
                        () => context.pushNamed(RouteNames.lostPasswordView)),
                    SizedBox(height: 62.h),
                    ButtonWidget(
                      btnText: 'Log In',
                      onTap: () {
                        if (_loginFormKey.currentState?.validate() ?? false) {
                          context
                              .read<LoginBloc>()
                              .add(const LoginEvent.login());
                        }
                      },
                    ),
                    SizedBox(height: 126.h),
                    TextViewWidget(
                      'Or continue with',
                      style: textTheme.titleLarge,
                    ),
                    SizedBox(height: 68.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialButtonView(
                          icon: ImagesResource.googleIcon,
                          onTap: () {},
                        ),
                        SizedBox(width: 62.w),
                        SocialButtonView(
                          icon: ImagesResource.facebookIcon,
                          onTap: () {},
                        ),

                        ///! TODO Uncomment the below checks
                        // if (Platform.isIOS)
                        SizedBox(width: 62.w),
                        // if (Platform.isIOS)
                        SocialButtonView(
                          icon: ImagesResource.appleIcon,
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 360.h),
                    RichText(
                      text: TextSpan(
                          text: 'Don’t you have an account?  ',
                          style: textTheme.titleLarge,
                          children: [
                            TextSpan(
                              text: 'Sign Up',
                              style: textTheme.titleLarge?.copyWith(
                                color: AppColors.primaryColor,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () =>
                                    context.pushNamed(RouteNames.signUpView),
                            )
                          ]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _listener(LoginState state, BuildContext context) {
    final status = state.status;
    if (status is SuccessRequestStatus) {
      context.pushNamed(RouteNames.feedView);
    } else if (status is FailureRequestStatus) {
      ///! TODO Show snackbar
    }
  }
}
