import 'package:flutter/material.dart';
import 'package:itemmanager/components/app_appbars.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbaritem('Histórico'),
    );
  }
}
