import '../../../../core/constants/exports.dart';

class LostPasswordView extends StatefulWidget {
  const LostPasswordView({super.key});

  @override
  State<LostPasswordView> createState() => _LostPasswordViewState();
}

class _LostPasswordViewState extends State<LostPasswordView> {
  late final TextEditingController _lostPasswordController;

  @override
  void initState() {
    super.initState();
    _lostPasswordController = TextEditingController();
    _lostPasswordController.addListener(() {
      context.read<LostPasswordBloc>().add(LostPasswordEvent.isValidEmail(
          email: _lostPasswordController.text.trim()));
    });
  }

  @override
  void dispose() {
    _lostPasswordController.removeListener(() {
      context.read<LostPasswordBloc>().add(LostPasswordEvent.isValidEmail(
          email: _lostPasswordController.text.trim()));
    });
    _lostPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Lost Password'),
      body: BlocListener<LostPasswordBloc, LostPasswordState>(
        listener: (context, state) => _listener(state, context),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
              left: 125.ph, right: 125.ph, top: 252.pv, bottom: 72.pv),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 252.h),
              SvgPictureAssetWidget(ImagesResource.lostPasswordLockIcon,
                  size: 327.w),
              SizedBox(height: 159.h),
              TextViewWidget(
                'Lost your password huh?',
                style: textTheme.displayLarge?.copyWith(fontSize: 107.sp),
              ),
              SizedBox(height: 66.h),
              TextViewWidget(
                'No worries, we will fix and resend it to you.',
                style: textTheme.headlineMedium?.copyWith(fontSize: 62.sp),
              ),
              SizedBox(height: 397.h),
              TextFormFieldWidget(
                controller: _lostPasswordController,
                keyboardType: TextInputType.emailAddress,
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
              SizedBox(height: 160.h),
              BlocBuilder<LostPasswordBloc, LostPasswordState>(
                builder: (context, state) {
                  return ButtonWidget(
                    btnText: 'Send',
                    isShowLoading: state.status is LoadingRequestStatus,
                    color: state.isValidEmail
                        ? null
                        : AppColors.disabledBtnColor.withOpacity(0.15),
                    textColor:
                        state.isValidEmail ? null : AppColors.disabledBtnColor,
                    onTap: () {
                      if (state.isValidEmail) {
                        context.unfocusKeyboard();
                        context.read<LostPasswordBloc>().add(
                            LostPasswordEvent.sendPasswordResetEmail(
                                email: _lostPasswordController.text.trim()));
                      }
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _listener(LostPasswordState state, BuildContext context) {
    final status = state.status is SuccessRequestStatus;
    if (status) context.pushNamed(RouteNames.emailSendView);
  }
}
