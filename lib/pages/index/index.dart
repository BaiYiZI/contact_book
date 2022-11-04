import 'package:flutter/material.dart';

import 'package:contact_book/pages/index/get_index_app_bar.dart';
import 'package:contact_book/pages/index/get_index_drawer.dart';
import 'package:contact_book/pages/index/get_index_botttom_nagivation_bar.dart';
import 'package:contact_book/pages/index/get_theme.dart';

import 'package:contact_book/pages/show/show.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => IndexPageState();
}

class IndexPageState extends State<IndexPage> {
  int _currentIndex = 0;
  int _info = 0;

  void _changePage(int index) {
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;
        _info = index;

        print(_currentIndex);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Show(info: "$_info"),
        appBar: getIndexAppBar(),
        drawer: getIndexDrawer(),
        bottomNavigationBar: getBottomNavigationBar(_currentIndex, _changePage),
      ),
      theme: getTheme(),
      
    );
  }
}
