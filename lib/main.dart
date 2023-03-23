import 'package:flutter/material.dart';
import 'package:health_exercises/screens/home/components/color_schemes.g.dart';
import 'screens/home/home.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Health Exercises',
    theme: ThemeData(
      colorScheme: lightColorScheme
    ),
    home: Home(),
  ),
  );
}
