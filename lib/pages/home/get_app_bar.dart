import "package:flutter/material.dart";

_showDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: Text("Not Implemented"),
        content: Text("Next Version……"),
        actions: <Widget>[
          ElevatedButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.deepPurple[300]), //背景颜色
            ),
          ),
        ],
      );
    },
  );
}

getAppBar(tabController, tabs, context) {
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
          _showDialog(context);
        }),
      )
    ],
    bottom: TabBar(
      controller: tabController,
      tabs: tabs,
    ),
  );
}
