import 'package:flutter/material.dart';
import 'package:test_drive/pages/home_page.dart';
import 'package:test_drive/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const IntroPage(title: 'Intro Page'),
      debugShowCheckedModeBanner: false,
      routes: {
        '/intro': (context) => const IntroPage(title: 'Intro Page'),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
