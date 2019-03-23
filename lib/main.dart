import 'package:flutter/material.dart';
import './utils.dart';
import './data.dart';

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
                icon: Icon(
                  Icons.favorite_border,
                  size: screenAwareSize(20.0, context),
                  color: Colors.white,
                ),
              ),
            ],
          ),
          body: Column(
            children: <Widget>[
              ProductScreenTopPart(),
              ProductScreenBottomPart(),
            ],
          )),
    );
  }
}

class ProductScreenTopPart extends StatefulWidget {
  final Widget child;

  ProductScreenTopPart({Key key, this.child}) : super(key: key);

  _ProductScreenTopPartState createState() => _ProductScreenTopPartState();
}

class _ProductScreenTopPartState extends State<ProductScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenAwareSize(245, context),
      child: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: Image.asset(
                  "assets/adidas.png",
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0, right: 35.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: screenAwareSize(50.0, context),
                    height: screenAwareSize(50.0, context),
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/360.png"),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            left: screenAwareSize(18.0, context),
            bottom: screenAwareSize(15.0, context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Rating",
                  style: TextStyle(
                      color: Color(0xFF949598),
                      fontSize: screenAwareSize(14.0, context),
                      fontFamily: "Monteserrat-SemiBold"),
                ),
                SizedBox(height: screenAwareSize(8.0, context)),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFFFE600),
                    ),
                    SizedBox(
                      width: screenAwareSize(5.0, context),
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(color: Color(0xFFFFE600)),
                    ),
                    SizedBox(
                      width: screenAwareSize(5.0, context),
                    ),
                    Text("(378 People)",
                        style: TextStyle(color: Colors.white, fontSize: 14.0)),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductScreenBottomPart extends StatefulWidget {
  final Widget child;

  ProductScreenBottomPart({Key key, this.child}) : super(key: key);

  _ProductScreenBottomPartState createState() =>
      _ProductScreenBottomPartState();
}

class _ProductScreenBottomPartState extends State<ProductScreenBottomPart> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: screenAwareSize(18.0, context)),
            child: Text("Product Description",
                style: TextStyle(
                    color: Color(0xFF949598),
                    fontSize: screenAwareSize(14.0, context),
                    fontFamily: "Montserrat-SemiBold")),
          ),
          SizedBox(height: screenAwareSize(8.0, context)),
          AnimatedCrossFade(
            firstChild: Text(
              desc,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: screenAwareSize(10.0, context),
                  fontFamily: "Montserrat-Medium"),
            ),
            secondChild: Text(
              desc,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: screenAwareSize(10.0, context),
                  fontFamily: "Montserrat-Medium"),
            ),
            crossFadeState: isExpanded ? CrossFadeState.showSecond:CrossFadeState.showFirst,
            duration: kThemeAnimationDuration,
          ),
        ],
      ),
    );
  }
}
