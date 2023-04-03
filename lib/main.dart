import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello Chris',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                Row(children: [
                  Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: Color(0xff12223a), shape: BoxShape.circle),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      )),
                  SizedBox(width: 20),
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: Color(0xff12223a), shape: BoxShape.circle),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ])
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Smart home app \nMy Home lisghts smart app.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
