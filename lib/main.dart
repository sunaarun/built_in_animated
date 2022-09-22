import 'package:built_in_animated/builtIn_animation/animated_container.dart';
import 'package:built_in_animated/builtIn_animation/fade_transition.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:// MyFadeTransition() // For Fade Transition
      MyAnimatedContainer() // For Animated Contaniner
    );
  }
}

