part of 'message_center_bloc.dart';

@freezed
class MessageCenterState with _$MessageCenterState {
  const factory MessageCenterState.messageCenterState({
    @Default(InitialRequestStatus()) RequestStatus status,
    @Default(MessageCenterTab.chat) MessageCenterTab messageCenterTab,
  }) = _MessageCenterState;
}
