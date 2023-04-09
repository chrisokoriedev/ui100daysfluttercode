import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/reuseable_component/styles.dart';
import 'package:helloworld/reuseable_component/widget.dart';
import 'package:helloworld/view/signup.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            heightsizeCutsom(40),
            Center(
              child: Image.asset(
                'assets/welcome.png',
                width: 400.w,
                height: 500.h,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dukka',
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  heightsizeCutsom(5),
                  Text(
                    'The only finance management application',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  heightsize(),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff3e4685)),
                        fixedSize:
                            MaterialStateProperty.all(Size(165.w, 65.h))),
                    child: Text(
                      "Let's Go",
                      style: TextStyle(color: whiteColor, fontSize: 16.sp),
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
