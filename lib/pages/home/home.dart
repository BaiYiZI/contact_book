import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
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
        ),
        drawer: Drawer(
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
              const ListTile(title: Text("option")),
              const ListTile(title: Text("option")),
              const ListTile(title: Text("option")),
              const ListTile(title: Text("option")),
              const ListTile(title: Text("option")),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "home",
              tooltip: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: "setting",
              tooltip: "",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        body: const Center(
          child: Text("0"),
        ),
      ),
      theme: ThemeData(
        primaryColor: Colors.deepPurple[300],
        appBarTheme: AppBarTheme(
          color: Colors.deepPurple[300],
          iconTheme: IconThemeData(color: Colors.amber[50], size: 36),
          titleSpacing: 0,
          titleTextStyle: TextStyle(color: Colors.amber[50], fontSize: 18),
          centerTitle: true,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            color: Colors.deepPurple[300],
            size: 28,
            shadows: <Shadow>[Shadow(blurRadius: 10)],
          ),
          unselectedIconTheme: const IconThemeData(
            color: Colors.grey,
            size: 28,
          ),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepPurple[300],
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
