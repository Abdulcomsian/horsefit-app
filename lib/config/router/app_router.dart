import 'package:horse_fit/app/views/add_friends_views/add_owner_trainer/add_owner_trainer_view.dart';
import 'package:horse_fit/app/views/horse_profile/horse_profile_view.dart';
import 'package:horse_fit/app/views/messages_and_notifications_veiws.dart/message_center_view.dart';
import 'package:horse_fit/app/views/shop_views/shop_view.dart';
import 'package:horse_fit/app/views/start_workout_views/start_workout_view.dart';
import 'package:horse_fit/app/views/statistics_views/statistics_view/statistics_view.dart';
import 'package:horse_fit/app/views/support_and_settings_views/support_and_settings_view.dart';

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
          builder: (_) => const MessageCenterView(),
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
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => CreatePostBloc(),
            child: const CreatePostView(),
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

      case RouteNames.startWorkoutView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const StartWorkOutView(),
        );

      case RouteNames.addOwnerTrainerView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const AddOwnerTrainerView(),
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
          builder: (_) => const HorseProfileView(),
        );

      default:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const Scaffold(
              body: Center(
            child: Text('No route defined'),
          )),
        );
    }
  }
}
