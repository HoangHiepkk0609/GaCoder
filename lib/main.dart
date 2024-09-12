// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ticket_app/pages/first_page.dart';
import 'package:ticket_app/pages/home_page.dart';
import 'package:ticket_app/pages/setting_page.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void userTapped() {
    print('User Tapped');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstPage(),
      routes: {
        '/firstpage': (context) => const FirstPage(),
        '/homepage': (context) => const HomePage(),
        '/settingpage': (context) => const SettingPage(),
      },
    );
  }
}
