import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/reuseable_component/widget.dart';
import 'package:helloworld/view/signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightsize(),
            Center(
              child: Image.asset(
                'assets/welcome.png',
                width: 250,
                height: 250,
              ),
            ),
            heightsize(),
            Text(
              'Dukka',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            heightsize(),
            Text(
              'The only finance management application',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            heightsize(),
            TextButton(
              child: Text('Let go'),
              onPressed: () => Get.to(const SignupPage()),
            ),
          ],
        ),
      ),
    );
  }
}
