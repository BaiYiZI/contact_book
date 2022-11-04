import "package:flutter/material.dart";

getIndexAppBar() {
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
      )
    ],
  );
}
