import 'exports.dart';

final logger = Logger();
final locator = GetIt.instance;
final status = NetworkStatusService();
final routeObserver = RouteObserver<ModalRoute>();
final navigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldState> feedScaffoldKey = GlobalKey();
