import '../../../../core/constants/exports.dart';

class CreatePostView extends StatefulWidget {
  const CreatePostView({super.key, CreatePostArgs? args}) : _args = args;

  final CreatePostArgs? _args;

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
    logger.i(widget._args?.isFromChat);

    return Scaffold(
      appBar: AppBarWidget(
        title: widget._args?.isFromChat == true
            ? 'Write a Message'
            : 'Write a Post',
      ),
      body: SizedBox.expand(
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 92.ph, vertical: 82.pv),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CachedNetworkImageWidget(
                          imageUrl:
                              'https://plus.unsplash.com/premium_photo-1664536392896-cd1743f9c02c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
                          size: 148.w,
                          borderRadius: BorderRadius.circular(60.r),
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
                    Flexible(
                      child: BlocBuilder<CreatePostBloc, CreatePostState>(
                        builder: (context, state) {
                          return state.pickedImages.isNotEmpty
                              ? state.pickedImages.length > 1
                                  ? Flexible(
                                      child: GridView.builder(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: state.pickedImages.length,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            mainAxisSpacing: 36.h,
                                            crossAxisSpacing: 36.w,
                                          ),
                                          itemBuilder: (context, index) {
                                            return ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(32.r),
                                              child: Image.file(
                                                File(state.pickedImages[index]),
                                                fit: BoxFit.cover,
                                              ),
                                            );
                                          }),
                                    )
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(76.r),
                                      child: Image.file(
                                          File(state.pickedImages.first)))
                              : const SizedBox.shrink();
                        },
                      ),
                    ),
                    SizedBox(height: 84.h),
                    BlocBuilder<CreatePostBloc, CreatePostState>(
                      builder: (context, state) {
                        return ButtonWidget(
                          padding: EdgeInsets.symmetric(vertical: 62.pv),
                          icon: SvgPictureAssetWidget(
                            ImagesResource.cameraIcon,
                            size: 82.w,
                            isApplyColorFilter: true,
                            color: AppColors.primaryColor,
                          ),
                          btnText: state.pickedImages.isEmpty
                              ? 'Add Media'
                              : 'Add More Media',
                          textColor: AppColors.darkColor,
                          color: _controller.text.isEmpty
                              ? AppColors.grayColor
                              : null,
                          isShowBorder: true,
                          onTap: () async {
                            context.unFocusKeyboard();
                            await locator<BottomSheetUtils>()
                                .pickImageBottomSheet(
                              context,
                              isPickMulti: true,
                              uploadPickedMedia: (pickImage, pickedImages) {
                                List<String> pickedImgs = [];
                                if (pickImage.isNotEmpty) {
                                  pickedImgs.add(pickImage);
                                }
                                if (pickedImages.isNotEmpty) {
                                  pickedImgs
                                      .addAll(List<String>.from(pickedImages));
                                }
                                if (pickedImgs.isNotEmpty) {
                                  context.read<CreatePostBloc>().add(
                                      CreatePostEvent.pickImages(
                                          pickedImages: pickedImgs));
                                }
                              },
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder<CreatePostBloc, CreatePostState>(
            builder: (context, state) {
              return ButtonWidget(
                margin: EdgeInsets.only(
                    left: 92.ph, right: 92.ph, top: 40.pv, bottom: 82.pv),
                btnText: 'Send',
                color: !state.isValidPost ? AppColors.grayColor : null,
                textColor: !state.isValidPost
                    ? AppColors.darkColor.withOpacity(0.2)
                    : null,
                onTap: () {
                  if (state.isValidPost) {
                    context.unFocusKeyboard();
                    if (widget._args?.isFromChat == true) {
                      context.pushNamed(RouteNames.selectFriendsView);
                    } else {
                      context.pushNamed(RouteNames.finishPostView);
                    }
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
