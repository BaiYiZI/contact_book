import "package:flutter/material.dart";
import "package:contact_book/show.dart";

import "package:contact_book/pages/settings/index.dart";
import "package:contact_book/pages/home/index.dart";

import "./get_theme.dart";
import "./get_botttom_nagivation_bar.dart";

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
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
