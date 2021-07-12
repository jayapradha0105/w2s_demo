import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w2s_demo/activities/splash.dart';
import 'package:w2s_demo/activities/loc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: splash(),
        routes: <String, WidgetBuilder>{
          '/map': (BuildContext context) => new MapView(),
        });
  }
}