import 'package:flutter/material.dart';
import 'package:helloworld/reuseable_component/styles.dart';
import 'package:helloworld/view/add_expense.dart';
import 'package:get/get.dart';
import 'package:helloworld/view/welcome.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'view/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      builder: (context, child) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Dukka Project Demo',
          theme: ThemeData(
            scaffoldBackgroundColor: scaffoldBack,
            primarySwatch: Colors.grey,
          ),
          home: const Welcome()),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          return const MainScreen();
        } else {
          return const Welcome();
        }
      },
    );
  }
}
