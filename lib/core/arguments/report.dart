import '../constants/exports.dart';

class ReportArgs {
  ReportArgs({this.isFromFeedback = false, this.reportPostReason});

  final bool isFromFeedback;
  final ReportPostReasonsModel? reportPostReason;
}
