import 'package:flutter/material.dart';

class CustomBottomNav extends StatefulWidget {
  CustomBottomNav({super.key, required this.onIndexChange});
  void Function(int x) onIndexChange;
  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'Feeds'),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: 'Notification'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      type: BottomNavigationBarType.fixed,
      onTap: (val) {
        setState(() {
          selectedIndex = val;
          widget.onIndexChange(val);
        });
      },
    );
  }
}
