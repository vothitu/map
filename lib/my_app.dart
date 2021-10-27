import 'package:dtumaps/screens/markers/markers_screen.dart';
import 'package:dtumaps/screens/routes/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  // This components is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: "/",
      routes: Routes.routes(),
      onGenerateRoute: Routes.onGenerateRoute(),
    );
  }
}
