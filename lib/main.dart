import 'package:aftab_fu_project/bottom_bar.dart';
import 'package:aftab_fu_project/bottom_sheet.dart';
import 'package:aftab_fu_project/dialog_box.dart';
import 'package:aftab_fu_project/dynamic_list_view.dart';
import 'package:aftab_fu_project/grid_view_demo.dart';
import 'package:aftab_fu_project/image_demo.dart';
import 'package:aftab_fu_project/list_view_demo.dart';
import 'package:aftab_fu_project/login.dart';
import 'package:aftab_fu_project/multiple_selection_demo.dart';
import 'package:aftab_fu_project/on_boarding_view.dart';
import 'package:aftab_fu_project/single_list_view.dart';
import 'package:aftab_fu_project/tabbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViewDemo(),
    );
  }
}
