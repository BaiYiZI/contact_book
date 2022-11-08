import "package:flutter/material.dart";

getBottomNavigationBar(currentPageIndex, changePage) {
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
    currentIndex: currentPageIndex,
    onTap: changePage,
  );
}
