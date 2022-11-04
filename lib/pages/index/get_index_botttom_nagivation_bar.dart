import "package:flutter/material.dart";

getBottomNavigationBar(currentIndex, changePage) {
  return BottomNavigationBar(
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
    currentIndex: currentIndex,
    onTap: changePage,
  );
}
