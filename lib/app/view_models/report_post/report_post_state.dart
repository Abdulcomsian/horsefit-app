part of 'report_post_bloc.dart';

@freezed
class ReportPostState with _$ReportPostState {
  const factory ReportPostState.reportPostState({
    @Default([]) List<String> feedBackOptions,
    @Default(null) String? feedBack,
    @Default([]) List<ReportPostReasonsModel> reportPostReasons,
    @Default(null) ReportPostReasonsModel? report,
  }) = _ReportPostState;
}
