import 'package:challenge/screens/feeds.dart';
import 'package:challenge/screens/message.dart';
import 'package:challenge/screens/notification.dart';
import 'package:challenge/screens/profile.dart';
import 'package:challenge/widgets/custom_bottom_nav.dart';
import 'package:challenge/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int indexSelected = 0;
  String title = 'Feeds';
  Widget? selectedScreen = const Feeds();
  List<Widget>? tools = [
    IconButton(onPressed: () {}, icon: Icon(Icons.filter_list_sharp)),
    IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: tools,
      ),
      drawer: CustomDrawer(),
      bottomNavigationBar: CustomBottomNav(
        onIndexChange: (index) {
          setState(() {
            indexSelected = index;
            screenSwitcher();
          });
        },
      ),
      body: selectedScreen,
    );
  }

  void screenSwitcher() {
    switch (indexSelected) {
      case 0:
        tools = feedAppBarTools();
        title = 'Feeds';
        selectedScreen = const Feeds();
        break;
      case 1:
        tools = emptyAppBarTools();
        title = 'Message';
        selectedScreen = const Message();
        break;
      case 2:
        tools = emptyAppBarTools();
        title = 'Notification';
        selectedScreen = const NotificationCls();
        break;
      case 3:
        title = 'Profile';
        tools = profileAppBarTools();
        selectedScreen = const Profile();
        break;
    }
  }

  List<Widget> profileAppBarTools() {
    List<Widget> tools = [
      IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
    ];
    return tools;
  }

  List<Widget> feedAppBarTools() {
    List<Widget> tools = [
      IconButton(onPressed: () {}, icon: Icon(Icons.filter_list_sharp)),
      IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
    ];
    return tools;
  }

  List<Widget> emptyAppBarTools() {
    List<Widget> tools = [];
    return tools;
  }
}
