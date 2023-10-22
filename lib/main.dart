import 'package:flutter/material.dart';
import 'package:quiz/layout/home_layout.dart';

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
      title: 'Moody application',
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName : (context) => HomeLayout(),
      },
    );
  }
}
