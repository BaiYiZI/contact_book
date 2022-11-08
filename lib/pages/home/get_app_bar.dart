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
  );
}
