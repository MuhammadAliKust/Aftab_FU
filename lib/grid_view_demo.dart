import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Demo"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i) {
          return ListTile(
            tileColor: Colors.blue,
            leading: Icon(Icons.notifications),
            title: Text("Notification Title"),
            subtitle: Text("Notification Sub Title"),
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
