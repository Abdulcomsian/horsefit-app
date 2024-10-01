import 'package:horse_fit/app/views/report_post_views/report_reason_summary/report_reason_summary_view.dart';
import 'package:horse_fit/app/views/start_workout_views/share_workout/share_workout_view.dart';
import 'package:horse_fit/app/views/start_workout_views/workout_details/workout_details_view.dart';

import '../../app/view_models/auth_view_models/sign_up/sign_up_bloc.dart';
import '../../core/constants/exports.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.onBoardView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const OnBoardView(),
        );

      case RouteNames.loginView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => LoginBloc(),
            child: const LoginView(),
          ),
        );

      case RouteNames.signUpView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => SignUpBloc(),
            child: const SignUpView(),
          ),
        );

      case RouteNames.lostPasswordView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => LostPasswordBloc(),
            child: const LostPasswordView(),
          ),
        );

      case RouteNames.emailSendView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const EmailSendView(),
        );

      case RouteNames.feedView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => FeedBloc(),
            child: const FeedView(),
          ),
        );

      case RouteNames.messageCenterView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => MessageCenterBloc(),
            child: const MessageCenterView(),
          ),
        );

      case RouteNames.chatView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => MessageCenterBloc(),
            child: const ChatView(),
          ),
        );

      case RouteNames.selectFriendsView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => MessageCenterBloc(),
            child: const SelectFriendsView(),
          ),
        );

      case RouteNames.myStableView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const MyStableView(),
        );

      case RouteNames.addHorseView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => AddHorseBloc()),
              BlocProvider(create: (_) => SignUpBloc()),
            ],
            child: const AddHorseView(),
          ),
        );

      case RouteNames.profileInfoView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => SignUpBloc(),
            child: const ProfileInfoView(),
          ),
        );

      case RouteNames.addDevicesView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const AddDevicesView(),
        );

      case RouteNames.selectedDeviceView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => AddDevicesBloc(),
            child: const SelectedDeviceView(),
          ),
        );

      case RouteNames.createPostView:
        final args = settings.arguments as CreatePostArgs?;
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => CreatePostBloc(),
            child: CreatePostView(args: args),
          ),
        );

      case RouteNames.finishPostView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => CreatePostBloc(),
            child: const FinishPostView(),
          ),
        );

      case RouteNames.workoutLogView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => WorkoutLogBloc(),
            child: const WorkoutLogView(),
          ),
        );

      case RouteNames.selectHorseView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => WorkoutLogBloc(),
            child: const SelectHorseView(),
          ),
        );

      case RouteNames.intervalSettingsView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const IntervalSettingsView(),
        );

      case RouteNames.intervalSettingsSummaryView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const IntervalSettingsSummaryView(),
        );

      case RouteNames.selectedHorseView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => StartWorkoutBloc(),
            child: const SelectedHorseView(),
          ),
        );

      case RouteNames.startWorkoutView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => StartWorkoutBloc(),
            child: const StartWorkOutView(),
          ),
        );

      case RouteNames.startWorkoutTimerView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => StartWorkoutBloc(),
            child: const StartWorkoutTimerView(),
          ),
        );

      case RouteNames.summaryView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const SummaryView(),
        );

      case RouteNames.shareWorkoutView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const ShareWorkoutView(),
        );

      case RouteNames.workoutDetailsView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const WorkoutDetailsView(),
        );

      case RouteNames.shopView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const ShopView(),
        );

      case RouteNames.supportAndSettingsView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const SupportAndSettingsView(),
        );

      case RouteNames.publicProfileView:
        final args = settings.arguments as PublicProfileArgs?;
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => PublicProfileBloc(),
            child: PublicProfileView(args: args),
          ),
        );

      case RouteNames.publicProfileInfoView:
        final args = settings.arguments as PublicProfileArgs?;
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => PublicProfileBloc(),
            child: PublicProfileInfoView(args: args),
          ),
        );

      case RouteNames.addOwnerAndTrainerView:
        final args = settings.arguments as AddOwnerTrainerArgs?;
        return NoAnimationMaterialPageRoute(
          builder: (_) => AddOwnerAndTrainerView(args: args),
        );

      case RouteNames.roleOwnerOrTrainerView:
        final args = settings.arguments as AddOwnerTrainerArgs?;
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => AddOwnerTrainerBloc(),
            child: RoleOwnerOrTrainerView(args: args),
          ),
        );

      case RouteNames.searchOwnerAndTrainerView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const SearchOwnerAndTrainerView(),
        );

      case RouteNames.webView:
        final args = settings.arguments as WebViewArgs;
        return NoAnimationMaterialPageRoute(
          builder: (_) => WebView(args: args),
        );

      case RouteNames.feedBackView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => ReportPostBloc()
              ..add(const ReportPostEvent.getAllFeedBackOptions()),
            child: const FeedBackView(),
          ),
        );

      case RouteNames.reportFeedBackSuccessView:
        final args = settings.arguments as ReportArgs?;
        return NoAnimationMaterialPageRoute(
          builder: (_) => ReportFeedbackSuccessView(args: args),
        );

      case RouteNames.reportPostView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const ReportPostView(),
        );

      case RouteNames.reportReasonsView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => ReportPostBloc()
              ..add(const ReportPostEvent.getAllReportPostReasons()),
            child: const ReportReasonsView(),
          ),
        );

      case RouteNames.reportReasonSummaryView:
        final args = settings.arguments as ReportArgs;
        return NoAnimationMaterialPageRoute(
          builder: (context) => ReportReasonSummaryView(args: args),
        );

      default:
        return NoAnimationMaterialPageRoute(
          builder: (_) => Scaffold(
              body: Center(
            child: TextViewWidget(
              'No route defined',
              style: textTheme.displaySmall,
            ),
          )),
        );
    }
  }
}
