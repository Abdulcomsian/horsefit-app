import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:timeago/timeago.dart' as timeago;

import '../../../../core/constants/exports.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: '',
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back, color: AppColors.darkColor),
        ),
        centerTitle: false,
        titleWidget: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipOval(
              child: CachedNetworkImageWidget(
                imageUrl: ConstantsResource.profileUrl,
                size: 160.w,
              ),
            ),
            SizedBox(width: 24.w),
            TextViewWidget(
              'Mari Alma',
              style: textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Chat(
          scrollPhysics: const BouncingScrollPhysics(),
          theme: DefaultChatTheme(
            inputSurfaceTintColor: Colors.yellow,
            inputBackgroundColor: const Color(0xFFE6E6E6),
            inputTextColor: AppColors.darkColor,
            inputPadding:
                EdgeInsets.symmetric(horizontal: 62.ph, vertical: 62.pv),
            inputMargin: EdgeInsets.only(
                left: 82.ph, right: 82.ph, top: 24.pv, bottom: 82.pv),
            inputTextStyle: textTheme.titleLarge!,
            inputBorderRadius: BorderRadius.circular(48.r),
            inputContainerDecoration: BoxDecoration(
              color: AppColors.whiteColor,
              border:
                  Border.all(color: Colors.grey.withOpacity(0.2), width: 4.w),
              borderRadius: BorderRadius.circular(48.r),
            ),
            primaryColor: AppColors.primaryColor,
            attachmentButtonIcon:
                const SvgPictureAssetWidget(ImagesResource.addCircleIcon),
            attachmentButtonMargin: EdgeInsets.zero,
            sendButtonIcon:
                const SvgPictureAssetWidget(ImagesResource.sendIcon),
            sendButtonMargin: EdgeInsets.zero,
            messageInsetsHorizontal: 72.ph,
            messageInsetsVertical: 52.pv,
            messageBorderRadius: 48.r,
            sentMessageBodyTextStyle:
                textTheme.titleMedium?.copyWith(color: AppColors.whiteColor) ??
                    const TextStyle(
                      color: neutral7,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
            receivedMessageBodyTextStyle: textTheme.titleMedium ??
                const TextStyle(
                  color: neutral0,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
          ),
          messages: _messages,
          user: _user,
          dateHeaderBuilder: (date) => Container(
              margin: EdgeInsets.only(bottom: 66.pv),
              padding: EdgeInsets.symmetric(horizontal: 72.ph, vertical: 24.pv),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.grayColor),
                borderRadius: BorderRadius.circular(62.r),
              ),
              child: TextViewWidget(
                timeago.format(date.dateTime),
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.darkColor.withOpacity(0.3),
                ),
              )).center(),
          onSendPressed: _handleSendPressed,
          onAttachmentPressed: _handleAttachmentPressed,
        ),
      ),
    );
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage);
  }

  void _addMessage(types.Message message) {
    setState(() => _messages.insert(0, message));
  }

  void _handleAttachmentPressed() {}

  void _loadMessages() {
    const uuid = Uuid();

    // Sample messages
    final message1 = types.TextMessage(
      author: const types.User(id: 'user1', firstName: 'John'),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: uuid.v4(),
      text: 'Hello! How are you?',
    );

    final message2 = types.TextMessage(
      author: const types.User(id: 'user1', firstName: 'John'),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: uuid.v4(),
      text: 'I\'m doing well. Just checking in.',
    );

    setState(() => _messages = [message1, message2]);
  }
}
