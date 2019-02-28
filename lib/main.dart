library main;

import 'package:diet_driven/pages/page_factory.dart';
import 'package:diet_driven/widgets/home_screen.dart';
import 'package:logging/logging.dart';
import 'package:diet_driven/built_redux_rx-master/lib/built_redux_rx.dart';
import 'package:diet_driven/middleware/epics.dart';
import 'package:diet_driven/middleware/middleware.dart';
import 'package:diet_driven/data/page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart' hide Builder;
import 'package:diet_driven/actions/actions.dart';
import 'package:diet_driven/reducers/reducers.dart';
import 'package:diet_driven/models/app_state.dart';

import 'package:built_redux/built_redux.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

import 'package:firebase_analytics/firebase_analytics.dart';

void main() => runApp(new DDApp());

///
class DDApp extends StatefulWidget {
  // Used for navigation middleware
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static FirebaseAnalytics analytics = FirebaseAnalytics();
//  static FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(analytics: analytics);

  @override
  State<StatefulWidget> createState() => _DDAppState();
}

class _DDAppState extends State<DDApp> {
  final store = new Store(
    getBaseReducer(),
    new AppState(),
    new Actions(),
    middleware: [
      createMiddleware(FirebaseAuth.instance),
      createEpicMiddleware(createEpicBuilder()),
    ],
  );

  @override
  void initState() {
    super.initState();

    // Configure logger
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((LogRecord rec) {
      print("${rec.loggerName} ~ ${rec.level.name} ~ ${rec.time} ~ ${rec.message}");
    });
    // TODO: upload to google cloud stack driver??

    store.actions.initApp();
  }


  @override
  void dispose() {
    store.actions.disposeApp();
    store.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Map routes to pages
    Map<String, WidgetBuilder> routes = Map<String, WidgetBuilder>.fromIterable(
      Page.values,
      key: (page) => page.toString(),
      value: (page) => (context) => PageFactory.toPage(page)
    );

    // Home page
    routes.addAll({
      "/": (context) => HomeScreen()
    });

    return new ReduxProvider(
        store: store,
        child: new MaterialApp(
          navigatorKey: DDApp.navigatorKey,
          title: "Diet Driven",
          theme: ThemeData(fontFamily: 'FiraSans'),
          routes: routes,
          initialRoute: "/",
//          onUnknownRoute: (settings) => settings.name, // TODO
        ),
    );
  }
}
