import "package:flutter/material.dart";

getDrawer() {
  return Drawer(
    child: Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.image_rounded),
        title: const Text("Summary Data"),
        centerTitle: false,
      ),
      body: Column(
        children: const [
          ListTile(title: Text("Data Item")),
          ListTile(title: Text("Data Item")),
          ListTile(title: Text("Data Item")),
          ListTile(title: Text("Data Item")),
          ListTile(title: Text("Data Item")),
        ],
      ),
    ),
  );
}
