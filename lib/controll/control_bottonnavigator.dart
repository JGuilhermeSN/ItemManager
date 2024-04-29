import 'package:flutter/material.dart';
import 'package:itemmanager/components/app_colors.dart';
import 'package:itemmanager/pages/history.dart';
import 'package:itemmanager/pages/new_item.dart';
import 'package:itemmanager/pages/suport_call.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _BottonNavBarState();
}

class _BottonNavBarState extends State<Homepage> {
  List<Widget> pageList = [];
  int _currentIndex = 0;
  @override
  void initState() {
    _currentIndex = 0;
    pageList.add(const SuportCaller());
    pageList.add(const NewItem());
    pageList.add(const History());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.appbar,
        selectedItemColor: AppColors.whitecolor,
        unselectedItemColor: AppColors.darkerColor,
        selectedFontSize: 16,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_task), label: "Chamados"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_to_queue), label: "Empréstimo"),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), label: "Histórico"),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
