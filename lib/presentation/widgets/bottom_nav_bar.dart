import 'package:flutter/material.dart';


class MyBottomNavBar extends StatelessWidget {
  final ValueNotifier<int> currentPage;
  const MyBottomNavBar({super.key, required this.currentPage});
  

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: currentPage,
      builder: (__, v,_) {
        return BottomNavigationBar(
          currentIndex: v,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add_check),
              label: 'PlayList'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
            ),
          ],
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          onTap: (value) => currentPage.value=value,
        );
      }
    );
  }
}
