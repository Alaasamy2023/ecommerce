import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(child: const Text("Login")),
    );
  }
}