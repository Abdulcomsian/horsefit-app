import 'package:horse_fit/app/models/custom/report_post_reasons_model.dart';

import '../../../core/constants/exports.dart';

part 'report_post_event.dart';
part 'report_post_state.dart';
part 'report_post_bloc.freezed.dart';

class ReportPostBloc extends Bloc<ReportPostEvent, ReportPostState> {
  ReportPostBloc() : super(const ReportPostState.reportPostState()) {
    on<GetAllFeedBackOptions>(_getAllFeedBackOptions);
    on<SelectFeedBackOption>(_selectFeedBackOption);
    on<GetAllReportPostReasons>(_reportPostReasonsModel);
    on<SelectReportOption>(_selectReportOption);
  }

  FutureOr<void> _getAllFeedBackOptions(
      GetAllFeedBackOptions event, Emitter<ReportPostState> emit) {
    final feedbackOptions = [
      "I'm not interested in the author",
      "I'm not interested in this topic",
      "I've seen too many posts of this",
      "I've seen this post before",
      "This post is old",
      "It's something else",
    ];
    emit(state.copyWith(feedBackOptions: feedbackOptions));
  }

  FutureOr<void> _selectFeedBackOption(
      SelectFeedBackOption event, Emitter<ReportPostState> emit) {
    emit(state.copyWith(feedBack: event.feedBack));
  }

  FutureOr<void> _reportPostReasonsModel(
      GetAllReportPostReasons event, Emitter<ReportPostState> emit) {
    final reportPostReasons = [
      ReportPostReasonsModel(
        title: 'Harassment',
        reason:
            'Harassment refers to any unwanted or harmful behavior, including abusive language or repeated negative interactions, directed at individuals or groups, causing emotional distress or discomfort to the target.',
      ),
      ReportPostReasonsModel(
        title: 'Fraud or scam',
        reason:
            'Fraud or scam refers to deceptive posts or activities aimed at misleading users, such as false claims, offers, or attempts to steal money or personal information under false pretenses.',
      ),
      ReportPostReasonsModel(
        title: 'Spam',
        reason:
            'Spam refers to irrelevant or repetitive posts, often promotional, that clutter the feed and disrupt user experience by offering little to no value.',
      ),
      ReportPostReasonsModel(
        title: 'Misinformation',
        reason:
            'Misinformation refers to posts that share false or misleading information, whether intentional or not, which could misinform or confuse users about important facts or topics.',
      ),
      ReportPostReasonsModel(
        title: 'Hateful speech',
        reason:
            'Hateful speech refers to posts that target individuals or groups with offensive, derogatory, or discriminatory language based on race, religion, gender, sexuality, or other characteristics, intending to harm or incite hostility.',
      ),
      ReportPostReasonsModel(
        title: 'Threats or violence',
        reason:
            'Threats or violence refers to posts that contain direct or implied threats of harm, intimidation, or promote physical violence against individuals, groups, or animals, creating a hostile or unsafe environment.',
      ),
      ReportPostReasonsModel(
        title: 'Self-harm',
        reason:
            'Self-harm refers to posts that promote, encourage, or depict behaviors where individuals intentionally harm themselves physically or emotionally, potentially influencing or endangering others.',
      ),
      ReportPostReasonsModel(
        title: 'Graphic content',
        reason:
            'Graphic content refers to posts containing disturbing or explicit images, videos, or descriptions of violence, injury, or other harmful material that may be inappropriate or distressing for users.',
      ),
      ReportPostReasonsModel(
        title: 'Dangerous or extremist organizations',
        reason:
            'This refers to posts that promote, support, or glorify groups involved in illegal, violent, or extremist activities that pose a threat to public safety or advocate harmful ideologies.',
      ),
      ReportPostReasonsModel(
        title: 'Fake content',
        reason:
            'Fake content refers to posts that are deliberately fabricated or altered to misrepresent reality, including false images, videos, or information intended to deceive users or create misinformation.',
      ),
      ReportPostReasonsModel(
        title: 'Child exploitation',
        reason:
            'Child exploitation refers to any posts that involve the abuse, mistreatment, or sexual exploitation of minors, including any content that exploits children for sexual purposes or promotes illegal activities involving minors.',
      ),
      ReportPostReasonsModel(
        title: 'Sexual content',
        reason:
            'Sexual content refers to posts that contain explicit or suggestive material, including images, videos, or discussions that focus on sexual acts, nudity, or other sexually explicit themes that may not be suitable for all users.',
      ),
      ReportPostReasonsModel(
        title: 'Illegal goods and services',
        reason:
            'This refers to posts that promote or facilitate the sale, distribution, or acquisition of items or services that are prohibited by law, such as drugs, weapons, or stolen property.',
      ),
      ReportPostReasonsModel(
        title: 'Infringement',
        reason:
            'Infringement refers to the unauthorized use or violation of someone else\'s intellectual property rights, including copyrights, trademarks, or patents, which may involve posting content without permission from the rights holder.',
      ),
    ];
    emit(state.copyWith(reportPostReasons: reportPostReasons));
  }

  FutureOr<void> _selectReportOption(
      SelectReportOption event, Emitter<ReportPostState> emit) {
    emit(state.copyWith(report: event.report));
  }
}
