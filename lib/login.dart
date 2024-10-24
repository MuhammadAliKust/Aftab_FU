import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                label: Text("Email"),
                hintText: 'test@gmai.com',
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.email)),
          ),
          TextField(
            controller: pwdController,
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
            decoration: InputDecoration(
                label: Text("Password"),
                hintText: 'Password should be 6 or more characters',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility)),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {
                if (emailController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Email cannot be empty.")));
                  return;
                }
                if (pwdController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Password cannot be empty.")));
                  return;
                }
                if (pwdController.text.length < 6) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content:
                          Text("Password should be 6 or more characters")));
                  return;
                }
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
