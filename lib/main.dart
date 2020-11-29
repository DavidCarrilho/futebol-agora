import 'package:flutter/material.dart';
import 'package:futebolagora/src/fut_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutebol Agora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutApp(),
    );
  }
}
