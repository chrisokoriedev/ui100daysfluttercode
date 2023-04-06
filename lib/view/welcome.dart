import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/view/signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
        child: Text('Let go'),
        onPressed: () => Get.to(const SignupPage()),
      )),
    );
  }
}
