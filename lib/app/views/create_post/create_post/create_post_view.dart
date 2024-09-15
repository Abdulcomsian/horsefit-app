import '../../../../core/constants/exports.dart';

class CreatePostView extends StatefulWidget {
  const CreatePostView({super.key});

  @override
  State<CreatePostView> createState() => _CreatePostViewState();
}

class _CreatePostViewState extends State<CreatePostView> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(() {
      context
          .read<CreatePostBloc>()
          .add(CreatePostEvent.isValidPost(text: _controller.text.trim()));
    });
  }

  @override
  void dispose() {
    _controller.removeListener(() {
      context
          .read<CreatePostBloc>()
          .add(CreatePostEvent.isValidPost(text: _controller.text.trim()));
    });
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Write a Post'),
      body: SizedBox.expand(
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 92.ph, vertical: 82.pv),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CachedNetworkImageWidget(
                            imageUrl:
                                'https://plus.unsplash.com/premium_photo-1664536392896-cd1743f9c02c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
                            size: 148.w,
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                          SizedBox(width: 32.w),
                          TextViewWidget(
                            'Kamran Khan',
                            style: textTheme.headlineMedium
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(height: 62.h),
                      TextFormFieldWidget(
                        controller: _controller,
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        textAlignVertical: TextAlignVertical.top,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        isMaxLinesNoLimit: true,
                        hintText:
                            'Tap here to write or add something horse related :)',
                      ),
                      SizedBox(height: 40.h),
                      CachedNetworkImageWidget(
                        imageUrl:
                            'https://images.unsplash.com/uploads/14136148007774dc82563/ce92d553?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG9yc2V8ZW58MHx8MHx8fDA%3D',
                        borderRadius: BorderRadius.circular(76.r),
                      ),
                      SizedBox(height: 84.h),
                      ButtonWidget(
                        padding: EdgeInsets.symmetric(vertical: 62.pv),
                        icon: SvgPictureAssetWidget(
                          ImagesResource.cameraIcon,
                          size: 82.w,
                          isApplyColorFilter: true,
                          color: AppColors.primaryColor,
                        ),
                        btnText: 'Add Media',
                        textColor: AppColors.darkColor,
                        color: _controller.text.isEmpty
                            ? AppColors.grayColor
                            : null,
                        isShowBorder: true,
                        onTap: () {},
                      ),
                      const Spacer(),
                      SizedBox(height: 120.h),
                      BlocBuilder<CreatePostBloc, CreatePostState>(
                        builder: (context, state) {
                          return ButtonWidget(
                            btnText: 'Send',
                            color:
                                !state.isValidPost ? AppColors.grayColor : null,
                            textColor: !state.isValidPost
                                ? AppColors.darkColor.withOpacity(0.2)
                                : null,
                            onTap: () {
                              if (state.isValidPost) {
                                context.pushNamed(RouteNames.finishPostView);
                              }
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
