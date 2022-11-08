import "package:flutter/material.dart";

getAppBar(tabController, tabs) {
  return AppBar(
    leading: Builder(
      builder: (context) {
        return IconButton(
          icon: const Icon(Icons.format_list_bulleted_sharp),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        );
      },
    ),
    title: const Text("App Bar"),
    actions: [
      GestureDetector(
        child: const Icon(Icons.bar_chart_rounded),
        onTap: (() {
          print("Sorry, first version without echart.");
        }),
        
      )
    ],
    bottom: TabBar(
      controller: tabController,
      tabs: tabs,
    ),
    // bottom: const TabBar(
    //   tabs: <Widget>[
    //     Tab(text: "热门"),
    //     Tab(text: "推荐"),
    //     Tab(text: "关注"),
    //     Tab(text: "收藏"),
    //     Tab(text: "新增"),
    //     Tab(text: "点赞"),
    //   ],
    //   // controller: TabController(length: 6, vsync: null),
    // ),
  );
}
