import "package:flutter/material.dart";

import "package:contact_book/show.dart";

import "./contact_peoples/index.dart";
import "./call_records/index.dart";

import "./get_app_bar.dart";
import "./get_drawer.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  late TabController _tabController;

  List<String> _tabs = ["联系人", "通话记录"];
  late var _pages = const [Show(), Show()];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _changePage(int index) {
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;

        print(_currentIndex);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: _pages,
      ),
      appBar: getAppBar(
        _tabController,
        _tabs.map((e) => Tab(text: e)).toList(),
        context,
      ),
      drawer: getDrawer(),
    );
  }
}
