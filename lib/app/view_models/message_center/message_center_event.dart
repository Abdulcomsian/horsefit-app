part of 'message_center_bloc.dart';

@freezed
class MessageCenterEvent with _$MessageCenterEvent {
  const factory MessageCenterEvent.toggleMessageCenterTab(
      {required MessageCenterTab messageCenterTab}) = ToggleMessageCenterTab;
}
