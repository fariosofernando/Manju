import 'package:flutter/material.dart';
import 'package:manju/views/home.view.dart';

void main() {
  runApp(const ManjuApp());
}

class ManjuApp extends StatefulWidget {
  const ManjuApp({Key? key}) : super(key: key);

  @override
  _ManjuAppState createState() => _ManjuAppState();
}

class _ManjuAppState extends State<ManjuApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/home',
      routes: {'/home': (context) => Home()},
    );
  }
}
