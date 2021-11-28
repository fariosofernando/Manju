import 'package:flutter/material.dart';
import 'package:manju/views/menu.view.dart';
import 'package:manju/views/receved.view.dart';

void main() {
  runApp(const ManjuApp());
}

// Widget inicial.
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
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/Receveds': (context) => const Receved(),
        '/': (context) => const Menu(),
      },
    );
  }
}
