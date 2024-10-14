import 'package:flutter/material.dart';

class MultipleSelectionListViewDemo extends StatefulWidget {
  MultipleSelectionListViewDemo({super.key});

  @override
  State<MultipleSelectionListViewDemo> createState() =>
      _MultipleSelectionListViewDemoState();
}

class _MultipleSelectionListViewDemoState
    extends State<MultipleSelectionListViewDemo> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multiple Selection List View"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i) {
          return ListTile(
            onTap: () {
              if (selectedIndex.contains(i)) {
                selectedIndex.remove(i);
              } else {
                selectedIndex.add(i);
              }

              setState(() {});
            },
            tileColor: selectedIndex.contains(i) ? Colors.blue : Colors.white,
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
