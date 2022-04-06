import 'package:flutter/material.dart';
import 'package:magic_8_ball/magicball.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask Me Anything',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Magicball(),
    );
  }
}

