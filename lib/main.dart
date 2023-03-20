import 'package:flutter/material.dart';
import 'package:islami_app/home/quran/sura_details.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/splash_screen.dart';

import 'home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
