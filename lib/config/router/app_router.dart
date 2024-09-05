import '../../core/constants/exports.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.loginView:
        return NoAnimationMaterialPageRoute(builder: (_) => const LoginView());

      default:
        return NoAnimationMaterialPageRoute(
            builder: (_) =>
                const Scaffold(body: Center(child: Text('No route defined'))));
    }
  }
}
