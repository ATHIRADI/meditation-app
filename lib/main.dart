import 'package:flutter/material.dart';
import 'package:meditation/common/color_extension.dart';
import 'package:meditation/screen/login/startup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditation App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "HelveticaNeue",
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: TColor.primary,
        ),
        useMaterial3: false,
      ),
      home: const StartUpScreen(),
    );
  }
}
