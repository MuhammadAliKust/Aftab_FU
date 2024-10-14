import 'package:flutter/material.dart';

class SingleSelectionListViewDemo extends StatefulWidget {
  SingleSelectionListViewDemo({super.key});

  @override
  State<SingleSelectionListViewDemo> createState() =>
      _SingleSelectionListViewDemoState();
}

class _SingleSelectionListViewDemoState
    extends State<SingleSelectionListViewDemo> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Selection List View"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i) {
          return ListTile(
            onTap: () {
              selectedIndex = i;
              setState(() {});
            },
            tileColor: selectedIndex == i ? Colors.blue : Colors.white,
            leading: Icon(Icons.notifications),
            title: Text("Selected Index: $selectedIndex"),
            subtitle: Text("Loop Index: $i"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.delete),
                Icon(Icons.edit),
                Icon(Icons.edit),
              ],
            ),
          );
        },
      ),
    );
  }
}
