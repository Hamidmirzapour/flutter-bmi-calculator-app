import 'package:flutter/cupertino.dart';
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
  double height = 162.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
          centerTitle: true,
          backgroundColor: Colors.black54,
          elevation: 0.5,
        ),
        body: Container(
          color: Colors.black54,
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
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Color.fromRGBO(88, 88, 88, 0.9),
                                offset: Offset(2, 2),
                                blurRadius: 8),
                          ],
                          color: Color.fromRGBO(35, 35, 32, 1.0),
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
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
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
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Color.fromRGBO(88, 88, 88, 0.9),
                                offset: Offset(2, 2),
                                blurRadius: 8),
                          ],
                          color: Color.fromRGBO(35, 35, 32, 1.0),
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
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(35, 35, 32, 1.0),
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(88, 88, 88, 0.9),
                              offset: Offset(2, 2),
                              blurRadius: 8),
                        ],
                      ),
                      padding: EdgeInsets.all(30.0),
                      margin: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              "Height",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                height.toString().substring(0, 3),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              Text(
                                " cm",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                            ],
                          ),
                          CupertinoSlider(
                            value: height,
                            min: 120.0,
                            max: 240.0,
                            divisions: 120,
                            activeColor: Colors.redAccent,
                            onChanged: (c) {
                              setState(() {
                                height = c;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
              Container(child: Row()),
              Container(child: Row()),
            ],
          ),
        ),
      ),
    );
  }
}
