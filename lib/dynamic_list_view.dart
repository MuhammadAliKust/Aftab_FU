import 'package:aftab_fu_project/model/user.dart';
import 'package:flutter/material.dart';

class DynamicListView extends StatelessWidget {
  DynamicListView({super.key});

  List<UserModel> userList = [
    UserModel(email: 'test@mail.com', name: 'Ali', phoneNumber: '23423432'),
    UserModel(
        email: 'test1@mail.com', name: 'Aftab', phoneNumber: '2343243243'),
    UserModel(email: 'test2@mail.com', name: 'Saad', phoneNumber: '24'),
    UserModel(email: 'test3@mail.com', name: 'A Saad', phoneNumber: '24'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic List View Demo"),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Icon(Icons.notifications),
            title: Text(userList[i].name),
            subtitle: Text(userList[i].email),
            trailing: Text(userList[i].phoneNumber.toString()),
          );
        },
      ),
    );
  }
}
