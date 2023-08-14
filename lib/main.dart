import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_challenge/challenge/todo_sailorxpotato_appbrainy/screens/create_screen/create_screen.dart';

import 'package:ui_challenge/challenge/todo_sailorxpotato_appbrainy/screens/home_screen/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return const MaterialApp(
      title: 'UI Challenge',
      debugShowCheckedModeBanner: false,
      home: CreateTodoScreen(),
    );
  }
}
