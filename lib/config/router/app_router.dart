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
          builder: (_) => BlocProvider(
            ///! TODO Replace this bloc
            create: (_) => FeedBloc(),
            child: const MyStableView(),
          ),
        );

      case RouteNames.addHorseView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            ///! TODO Replace this bloc
            create: (_) => FeedBloc(),
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

      case RouteNames.selectedHorseView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const SelectedHorseView(),
        );

      case RouteNames.startWorkoutView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const StartWorkOutView(),
        );

      case RouteNames.statisticsView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const StatisticsView(),
        );

      case RouteNames.shopView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const ShopView(),
        );

      case RouteNames.supportAndSettingsView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const SupportAndSettingsView(),
        );

      case RouteNames.horseProfileView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HorseProfileBloc(),
            child: const HorseProfileView(),
          ),
        );

      case RouteNames.horseInfoView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HorseProfileBloc(),
            child: const HorseInfoView(),
          ),
        );

      case RouteNames.addOwnerAndTrainerView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const AddOwnerAndTrainerView(),
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
