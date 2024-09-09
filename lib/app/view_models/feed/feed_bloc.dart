import '../../../core/constants/exports.dart';

part 'feed_event.dart';
part 'feed_state.dart';
part 'feed_bloc.freezed.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc() : super(const FeedState.feedState()) {
    on<Started>((event, emit) {});
  }
}
