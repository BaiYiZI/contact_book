import 'package:flutter/material.dart';

getTheme() {
  return ThemeData(
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
      selectedLabelStyle: TextStyle(fontSize: 16),
      unselectedLabelStyle: TextStyle(fontSize: 12),
    ),
  );
}
