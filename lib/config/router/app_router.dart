import 'package:horse_fit/app/views/menu/menu_view.dart';
import 'package:horse_fit/app/views/my_stable_views/add_devices/add_devices/add_devices_view.dart';
import 'package:horse_fit/app/views/my_stable_views/add_devices/selected_device/selected_device_view.dart';
import 'package:horse_fit/app/views/my_stable_views/add_horse/add_horse_view.dart';
import 'package:horse_fit/app/views/my_stable_views/my_stable/my_stable_view.dart';
import 'package:horse_fit/app/views/profile_info/profile_info_view.dart';

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
            create: (context) => FeedBloc(),
            child: const FeedView(),
          ),
        );

      case RouteNames.menuView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            ///! TODO Replace this bloc
            create: (context) => FeedBloc(),
            child: const MenuView(),
          ),
        );

      case RouteNames.myStableView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            ///! TODO Replace this bloc
            create: (context) => FeedBloc(),
            child: const MyStableView(),
          ),
        );

      case RouteNames.addHorseView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            ///! TODO Replace this bloc
            create: (context) => FeedBloc(),
            child: const AddHorseView(),
          ),
        );

      case RouteNames.profileInfoView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SignUpBloc(),
            child: const ProfileInfoView(),
          ),
        );

      case RouteNames.addDevicesView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const AddDevicesView(),
        );

      case RouteNames.selectedDeviceView:
        return NoAnimationMaterialPageRoute(
          builder: (_) => const SelectedDeviceView(),
        );

      default:
        return NoAnimationMaterialPageRoute(
            builder: (_) =>
                const Scaffold(body: Center(child: Text('No route defined'))));
    }
  }
}
