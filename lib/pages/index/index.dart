import 'package:contact_book/pages/show/show.dart';
import 'package:flutter/material.dart';

import "package:contact_book/pages/home/index.dart";
import 'package:contact_book/pages/index/get_theme.dart';
import 'package:contact_book/pages/index/get_botttom_nagivation_bar.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => IndexPageState();
}

class IndexPageState extends State<IndexPage> {
  int _currentPageIndex = 0;

  List _pages = [HomePage(), Show()];

  void _changePage(int index) {
    if (index != _currentPageIndex) {
      setState(() {
        _currentPageIndex = index;

        print(_currentPageIndex);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pages[_currentPageIndex],
        bottomNavigationBar:
            getBottomNavigationBar(_currentPageIndex, _changePage),
      ),
      theme: getTheme(),
    );
  }
}
