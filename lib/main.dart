import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

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
  int weight = 50;
  int age = 20;
  Color male_color = Colors.redAccent;
  Color female_color = Colors.white;
  double bmi = 0.0;
  String gender = "male";
  String status = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
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
                          padding: EdgeInsets.all(40.0),
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
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                gender = "male";
                                male_color = Colors.redAccent;
                                female_color = Colors.white;
                              });
                            },
                            child: Column(
                              children: [
                                Container(
                                  child: SvgPicture.asset(
                                    "assets/venus.svg",
                                    color: male_color,
                                    width: 50.0,
                                  ),
                                  margin: EdgeInsets.only(bottom: 10.0),
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                      color: male_color, fontSize: 18.0),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 10.0),
                          padding: EdgeInsets.all(40.0),
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
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                gender = "female";
                                female_color = Colors.redAccent;
                                male_color = Colors.white;
                              });
                            },
                            child: Column(
                              children: [
                                Container(
                                  child: SvgPicture.asset(
                                    "assets/mars.svg",
                                    color: female_color,
                                    width: 50.0,
                                  ),
                                  margin: EdgeInsets.only(bottom: 10.0),
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                      color: female_color, fontSize: 18.0),
                                )
                              ],
                            ),
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
                        padding: EdgeInsets.all(50.0),
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
                                      color: Colors.white, fontSize: 22.0),
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
                Container(
                    child: Row(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 40.0),
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
                              child: Text(
                                "Weight",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              margin: EdgeInsets.only(bottom: 10.0),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10.0),
                              child: Text(
                                weight.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22.0),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      --weight;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                  mini: true,
                                  backgroundColor: Colors.black,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      ++weight;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  mini: true,
                                  backgroundColor: Colors.black,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 40.0),
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
                              child: Text(
                                "Age",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              margin: EdgeInsets.only(bottom: 10.0),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10.0),
                              child: Text(
                                age.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22.0),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      --age;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                  mini: true,
                                  backgroundColor: Colors.black,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      ++age;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  mini: true,
                                  backgroundColor: Colors.black,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          bmi = weight / math.pow((height / 100), 2);
                        });
                        if (gender == "male") {
                          if (bmi < 18.5) {
                            status = "Underweight";
                          } else if (bmi < 24.9) {
                            status = "Normal Weight";
                          } else if (bmi < 29.9) {
                            status = "Overweight";
                          } else if (bmi < 34.9) {
                            status = "Severe Overweight";
                          } else {
                            status = "Obesity";
                          }
                        } else if (gender == "female") {
                          if (bmi < 17.5) {
                            status = "Underweight";
                          } else if (bmi < 24.0) {
                            status = "Normal Weight";
                          } else if (bmi < 29.0) {
                            status = "Overweight";
                          } else if (bmi < 34.0) {
                            status = "Severe Overweight";
                          } else {
                            status = "Obesity";
                          }
                        }
                        showCupertinoDialog(
                          context: context,
                          builder: (context) => CupertinoAlertDialog(
                            title: Text("Your status is.."),
                            content: Text(status),
                            actions: <Widget>[
                              FlatButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text("Dismiss"),
                              ),
                            ],
                          ),
                        );
                      },
                      child: Text(
                        "Calculate",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                      color: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
