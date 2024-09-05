import 'core/constants/exports.dart';

void main() {
  Size designSize = const Size(393.0, 852.0);
  runZonedGuarded(
    () async {
      await _init();
      runApp(SizeAdapter(
        designSize: designSize,
        child: const MyApp(),
      ));
    },
    (error, stackTrace) =>
        FirebaseCrashlytics.instance.recordError(error, stackTrace),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetConnectivityBloc(),
      child: MaterialApp(
        title: ConstantsResource.appName,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.ligthThemeData,
        navigatorKey: navigatorKey,
        initialRoute: RouteNames.loginView,
        onGenerateRoute: locator<AppRouter>().generateRoute,
      ),
    );
  }
}

Future<void> _init() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await initDependancies();
  await SvgUtils.preCacheSVGs();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}
