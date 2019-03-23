import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
),
);

class MyApp extends StatefulWidget {
  final Widget child;

  MyApp({Key key, this.child}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF696077),
            Color(0xFF292C36)
          ],
          begin: Alignment.center,
          end: Alignment.bottomCenter
        ),
      ),
       child: Scaffold(body: Container()),
    );
  }
}