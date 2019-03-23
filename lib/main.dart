import 'package:flutter/material.dart';
import './utils.dart';

void main() => runApp(
      MaterialApp(
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
          colors: [Color(0xFF696077), Color(0xFF292C36)],
          begin: Alignment.center,
          end: Alignment.bottomCenter,
          tileMode: TileMode.clamp,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: screenAwareSize(20.0, context),
              onPressed: () {},
            ),
            centerTitle: true,
            title: Text("Energy Cloud",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screenAwareSize(18.0, context),
                    fontFamily: "Montserrat-Bold")),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border, size: screenAwareSize(20.0, context), color: Colors.white,),
              ),
            ],
          ),
          body: Container()),
    );
  }
}
