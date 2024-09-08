import 'package:horse_fit/app/view_models/auth_view_models/sign_up/sign_up_bloc.dart';

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

      default:
        return NoAnimationMaterialPageRoute(
            builder: (_) =>
                const Scaffold(body: Center(child: Text('No route defined'))));
    }
  }
}
