import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SuportCaller extends StatefulWidget {
  const SuportCaller({super.key});

  @override
  State<SuportCaller> createState() => _SuportCallerState();
}

class _SuportCallerState extends State<SuportCaller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Chamado'),
      ),
    );
  }
}
