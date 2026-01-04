// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'home_page.dart';
import 'setting_page.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _currentIndex = 0;

  final List _pageList = [HomePage(), SettingPage()];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onPressed() async {
    context.push('/otherPage');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 8,
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
        ],
      ),
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(30),
        child: FloatingActionButton(
          onPressed: _onPressed,
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: .miniCenterDocked,
    );
  }
}
