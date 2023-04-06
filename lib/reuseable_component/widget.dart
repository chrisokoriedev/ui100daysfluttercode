import 'package:flutter/material.dart';
import 'package:helloworld/reuseable_component/styles.dart';
import 'package:get/get.dart';

SizedBox heightsize() => const SizedBox(height: 20);
SizedBox heightsizeCutsom(double height) => SizedBox(height: height);
iconCompo(IconData iconData) {
  return Icon(
    iconData,
    size: 30,
    color: iconData == Icons.add ? Colors.white : Colors.black54,
  );
}

expppccon(IconData iconData, String title, String desc, String amount) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0xffe8eff9),
            blurRadius: 16.0,
            spreadRadius: 0,
            offset: Offset(0, 16.0),
          ),
        ],
        color: Colors.white.withOpacity(0.7)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffe6eaf7)),
                  child: Icon(
                    iconData,
                    size: 28,
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      desc,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black45),
                    ),
                  ],
                )
              ],
            ),
            Text(
              amount,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            )
          ],
        )
      ],
    ),
  );
}

expensesconpo(String expensetype, String amount) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          Text(
            amount,
            style: const TextStyle(fontSize: 22, color: primaryColor),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            expensetype,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black38),
          )
        ],
      ),
      const SizedBox(width: 30),
      Container(
        width: 1.5,
        height: 60,
        color: Colors.black26,
      ),
    ],
  );
}

expensesconpoI(String expensetype, String amount) {
  return Column(
    children: [
      Text(
        amount,
        style: const TextStyle(fontSize: 22, color: primaryColor),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        expensetype,
        style: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black38),
      )
    ],
  );
}

inputCompo(String hintText, String labelttext, IconData iconData) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15.0),
      boxShadow: const [
        BoxShadow(
          color: Color(0xffe8eff9),
          blurRadius: 16.0,
          spreadRadius: 0,
          offset: Offset(0, 16.0),
        ),
      ],
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                labelttext,
                style: const TextStyle(fontSize: 14, color: kgreyColor),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  hintText: hintText,
                  hintStyle: const TextStyle(fontSize: 16, color: Colors.black),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    iconData,
                    color: Colors.black45,
                  ),
                  suffixIcon: labelttext == 'Password'
                      ? const Icon(Icons.remove_red_eye)
                      : null),
            ),
          ],
        ),
      ),
    ),
  );
}
