part of 'report_post_bloc.dart';

@freezed
class ReportPostEvent with _$ReportPostEvent {
  const factory ReportPostEvent.getAllFeedBackOptions() = GetAllFeedBackOptions;
  const factory ReportPostEvent.selectFeedBackOption(
      {required String feedBack}) = SelectFeedBackOption;
  const factory ReportPostEvent.getAllReportPostReasons() =
      GetAllReportPostReasons;
  const factory ReportPostEvent.selectReportOption(
      {required ReportPostReasonsModel report}) = SelectReportOption;
}
