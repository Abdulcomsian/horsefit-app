import 'core/constants/exports.dart';

void main() {
  Size designSize = const Size(1440.0, 3268.0);
  runZonedGuarded(
    () async {
      await _init();
      runApp(SizeAdapter(
        designSize: designSize,
        child: const MyApp(),
      ));
    },
    (error, stackTrace) {
      // FirebaseCrashlytics.instance.recordError(error, stackTrace);
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetConnectivityBloc(),
      child: MaterialApp(
        title: ConstantsResource.appName,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightThemeData,
        navigatorKey: navigatorKey,
        // initialRoute: RouteNames.feedView,
        initialRoute: RouteNames.onBoardView,
        onGenerateRoute: locator<AppRouter>().generateRoute,
      ),
    );
  }
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  await SvgUtils.preCacheSVGs();
  Bloc.observer = AppBlocObserver();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}
