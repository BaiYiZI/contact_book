import "package:flutter/material.dart";

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
        shadows: const <Shadow>[Shadow(blurRadius: 10)],
      ),
      unselectedIconTheme: const IconThemeData(
        color: Colors.grey,
        size: 28,
      ),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.deepPurple[300],
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: const TextStyle(fontSize: 16),
      unselectedLabelStyle: const TextStyle(fontSize: 12),
    ),
    tabBarTheme: const TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: Color.fromRGBO(179, 157, 219, 1),
          width: 4,
        ),
      ),
    ),
  );
}
