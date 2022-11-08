import "package:flutter/material.dart";

getDrawer() {
  return Drawer(
    child: Column(
      children: [
        Column(
          children: [
            AppBar(
              leading: const Icon(Icons.image_rounded),
              title: const Text("Summary Data"),
              centerTitle: false,
            ),
          ],
        ),
        const SizedBox(height: 16),
        const ListTile(title: Text("Data Item")),
        const ListTile(title: Text("Data Item")),
        const ListTile(title: Text("Data Item")),
        const ListTile(title: Text("Data Item")),
        const ListTile(title: Text("Data Item")),
      ],
    ),
    
  );
}
