import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:itemmanager/components/app_text.dart';

import '../components/app_appbars.dart';
import '../components/app_colors.dart';

class SuportCaller extends StatelessWidget {
  const SuportCaller({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbaritem('Chamados'),
    );
  }
}
