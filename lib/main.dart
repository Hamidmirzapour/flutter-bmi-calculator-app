import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
          centerTitle: true,
          backgroundColor: Colors.black26,
          elevation: 0.5,
        ),
        body: Container(
          color: Colors.black26,
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.black54,
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                "assets/venus.svg",
                                color: Colors.white,
                                width: 50.0,
                              ),
                              margin: EdgeInsets.only(bottom: 10.0),
                            ),
                            Text(
                              "Male",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 10.0),
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.black54,
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                "assets/mars.svg",
                                color: Colors.white,
                                width: 50.0,
                              ),
                              margin: EdgeInsets.only(bottom: 10.0),
                            ),
                            Text(
                              "Female",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(child: Row()),
              Container(child: Row()),
              Container(child: Row()),
            ],
          ),
        ),
      ),
    );
  }
}
