import 'package:flutter/material.dart';
import 'package:flutter_study/app/app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My App')),
        body: Center(child: Text('Hello, World!')),
      ),
    );
  }
}

void main() {
  runApp(const App());
}
