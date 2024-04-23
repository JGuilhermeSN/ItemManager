import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:itemmanager/pages/history.dart';
import 'package:itemmanager/pages/new_item.dart';
import 'package:itemmanager/pages/suport_call.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _BottonNavBarState();
}

class _BottonNavBarState extends State<homepage> {
  List<Widget> pageList = [];
  int _currentIndex = 0;
  @override
  void initState() {
    _currentIndex = 0;
    pageList.add(const NewItem());
    pageList.add(const SuportCaller());
    pageList.add(const History());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
