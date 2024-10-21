import 'package:aftab_fu_project/list_view_demo.dart';
import 'package:aftab_fu_project/login.dart';
import 'package:aftab_fu_project/on_boarding_view.dart';
import 'package:flutter/material.dart';

class TabbarViewDemo extends StatelessWidget {
  const TabbarViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: TabBar(tabs: [
            Text("Home"),
            Text("Favorite"),
            Text("Profile"),
          ]),
        ),
        body: TabBarView(
            children: [ListViewDemo(), OnBoardingView(), LoginView()]),
      ),
    );
  }
}
