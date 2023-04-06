import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../reuseable_component/styles.dart';
import '../reuseable_component/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBack,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          heightsize(),
          heightsize(),
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: Get.height * 0.4 + 40,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.sort_outlined),
                    Icon(
                      Icons.verified,
                      color: Colors.blue,
                    )
                  ],
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/bg.png',
                          ),
                          fit: BoxFit.fitWidth)),
                ),
                const Text(
                  'Okorie Christian',
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Frontend Developer',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 30),
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
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    'Overview',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.notifications_outlined)
                ],
              ),
              const Text(
                'Feb 22, 2022',
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(height: 30),
          expppccon(Icons.arrow_upward, 'Sent', 'Sending payment to clients',
              '\$150'),
          const SizedBox(height: 20),
          expppccon(Icons.arrow_downward, 'Receive',
              'Receiveing salary from work', '\$250'),
        ]),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            iconCompo(Icons.home_outlined),
            iconCompo(Icons.wallet),
            Container(
                width: 50,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor),
                child: iconCompo(Icons.add)),
            iconCompo(Icons.currency_bitcoin),
            iconCompo(Icons.person)
          ],
        ),
      ),
    );
  }
}
