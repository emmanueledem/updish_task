import 'package:flutter/material.dart';
import 'package:updish_task/core/navigators/route_name.dart';
import 'package:updish_task/core/navigators/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
        ),
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      initialRoute: RouteName.splash,
    );
  }
}
