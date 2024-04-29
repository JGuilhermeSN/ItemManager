import 'package:flutter/material.dart';
import 'package:itemmanager/components/app_colors.dart';
import 'package:itemmanager/controll/control_bottonnavigator.dart';
import 'package:itemmanager/pages/history.dart';
import 'package:itemmanager/pages/new_item.dart';
import 'package:itemmanager/pages/suport_call.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColors.appbar,
      ),
      initialRoute: '/homepage',
      routes: {
        '/homepage': (context) => const Homepage(),
        '/newItem': (context) => const NewItem(),
        '/history': (context) => const History(),
        '/suportCaller': (context) => const SuportCaller(),
      },
    );
  }
}
