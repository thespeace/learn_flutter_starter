import 'package:flutter/material.dart';
import 'package:learn_flutter_starter/pomodoro/screen/pomodoro_home_screen.dart';

class pomodoroApp extends StatelessWidget {
  const pomodoroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: const Color(0xFFE7626C),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Color(0xFF232855),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: PomodoroHomeScreen(),
    );
  }
}
