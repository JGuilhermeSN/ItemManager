import 'package:flutter/material.dart';
import 'package:itemmanager/controll/control_bottonnavigator.dart';
import 'package:itemmanager/pages/history.dart';
import 'package:itemmanager/pages/new_item.dart';
import 'package:itemmanager/pages/suport_call.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/homepage',
      routes: {
        '/homepage': (context) => const homepage(),
        '/newItem': (context) => const NewItem(),
        '/history': (context) => const History(),
        '/suportCaller': (context) => const SuportCaller(),
      },
    );
  }
}
