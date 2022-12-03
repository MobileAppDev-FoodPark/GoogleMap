import 'package:flutter/material.dart';

import 'maphomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Park',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const HomePage(),
    );
  }
}
