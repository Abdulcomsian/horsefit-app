import '../../../core/constants/exports.dart';

part 'message_center_event.dart';
part 'message_center_state.dart';
part 'message_center_bloc.freezed.dart';

class MessageCenterBloc extends Bloc<MessageCenterEvent, MessageCenterState> {
  MessageCenterBloc() : super(const MessageCenterState.messageCenterState()) {
    on<ToggleMessageCenterTab>(_toggleMessageCenterTap);
  }

  FutureOr<void> _toggleMessageCenterTap(
      ToggleMessageCenterTab event, Emitter<MessageCenterState> emit) {
    emit(state.copyWith(messageCenterTab: event.messageCenterTab));
  }
}
