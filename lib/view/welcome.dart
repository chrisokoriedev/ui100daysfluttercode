import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/reuseable_component/styles.dart';
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
            heightsizeCutsom(50),
            Center(
              child: Image.asset(
                'assets/welcome.png',
                width: 250,
                height: 250,
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dukka',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  heightsizeCutsom(10),
                  const Text(
                    'The only finance management application',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  heightsize(),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff3e4685)),
                        fixedSize:
                            MaterialStateProperty.all(const Size(150, 45))),
                    child: const Text(
                      "Let's Go",
                      style: TextStyle(color: whiteColor, fontSize: 16),
                    ),
                    onPressed: () => Get.to(const SignupPage()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
