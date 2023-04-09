import 'package:flutter/material.dart';
import 'package:helloworld/view/add_expense.dart';
import 'package:get/get.dart';
import '../reuseable_component/styles.dart';
import '../reuseable_component/widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBack,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            heightsize(),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffe8eff9),
                    blurRadius: 16.0,
                    spreadRadius: 0,
                    offset: Offset(0, 16.0),
                  ),
                ],
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Container(
                  //   width: 150.w,
                  //   height: 150.h,
                  //   decoration: const BoxDecoration(
                  //       shape: BoxShape.circle,
                  //       image: DecorationImage(
                  //           image: AssetImage(
                  //             'assets/bg.png',
                  //           ),
                  //           fit: BoxFit.fitWidth)),
                  // ),
                  Text(
                    'Okorie Christian',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      expensesconpo(
                        'Income',
                        '\$8900',
                      ),
                      expensesconpo(
                        'Expense',
                        '\$5500',
                      ),
                      expensesconpoI(
                        'Loan',
                        '\$900',
                      ),
                    ],
                  )
                ],
              ),
            ),
            heightsizeCutsom(20),
            expppccon(
                Icons.arrow_upward, 'Sent', 'Sending payment to', '\$150'),
            const SizedBox(height: 20),
            expppccon(Icons.arrow_downward, 'Receive', 'Receiveing salary from',
                '\$250'),
          ]),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 80.w,
        height: 80.h,
        child: FloatingActionButton(
          backgroundColor: primaryColor,
          onPressed: () => Get.to(const AddExpense()),
          child: Icon(
            Icons.add,
            size: 18.sp,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
