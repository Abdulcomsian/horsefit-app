import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../core/constants/exports.dart';

class MessageCenterView extends StatelessWidget {
  const MessageCenterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Message Center'),
      body: BlocBuilder<MessageCenterBloc, MessageCenterState>(
        builder: (context, state) {
          return Column(
            children: [
              MessageCenterSelectableCardWidget(
                messageCenterTab: state.messageCenterTab,
              ),
              SizedBox(height: 32.h),
              Flexible(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding:
                      EdgeInsets.symmetric(horizontal: 92.ph, vertical: 80.pv),
                  itemCount: 10,
                  itemBuilder: (context, index) =>
                      state.messageCenterTab == MessageCenterTab.chat
                          ? Slidable(
                              endActionPane: ActionPane(
                                motion: const BehindMotion(),
                                children: [
                                  SlidableAction(
                                    onPressed: (context) {
                                      locator<DialogueUtils>().customDialog(
                                        context,
                                        title:
                                            'Are you sure you want to delete this message?',
                                      );
                                    },
                                    icon: Icons.delete_outline,
                                    foregroundColor: AppColors.redColor,
                                  )
                                ],
                              ),
                              child: MessageCenterCardWidget(
                                  messageCenterTab: state.messageCenterTab),
                            )
                          : MessageCenterCardWidget(
                              messageCenterTab: state.messageCenterTab),
                  separatorBuilder: (context, index) => SizedBox(height: 48.h),
                ),
              )
            ],
          );
        },
      ),
      floatingActionButton: BlocBuilder<MessageCenterBloc, MessageCenterState>(
        builder: (context, state) {
          return state.messageCenterTab == MessageCenterTab.chat
              ? FloatingActionButton(
                  backgroundColor: AppColors.primaryColor,
                  child: SvgPictureAssetWidget(ImagesResource.chatIcon,
                      size: 92.w),
                  onPressed: () {
                    logger.i('tapped');

                    context.pushNamed(RouteNames.createPostView,
                        arguments: CreatePostArgs(isFromChat: true));
                  },
                )
              : const SizedBox.shrink();
        },
      ),
    );
  }
}
