import 'package:flutter/material.dart';
import 'package:sodesh_smart_healthcare/src/features/authentication/screens/splash/splash.dart';
import 'package:sodesh_smart_healthcare/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: RAppTheme.lightTheme,
      darkTheme: RAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: Splash(),
    );
  }
}

