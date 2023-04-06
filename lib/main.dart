import 'package:flutter/material.dart';
import 'package:helloworld/reuseable_component/styles.dart';
import 'package:helloworld/view/add_expense.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dukka Project Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: scaffoldBack,
          primarySwatch: Colors.grey,
        ),
        home: const AddExpense());
  }
}
