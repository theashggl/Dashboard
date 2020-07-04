import 'package:dashboard/doughnut.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'neumorphic_expenses/monthly_expenses_view.dart';

void main() => runApp(NeumorphicApp());

class NeumorphicApp extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<NeumorphicApp> {
  var tl = false,br = false;

  //tr = false, bl = false,
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: NeuAppBar(
          title: Text('Dashboard', textScaleFactor: 1.0),
        ),
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//        scaffoldBackgroundColor: Color(0XFFEFF3F6),
//      ),
        body: Builder(
          builder: (context) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTapUp: (details) {
                      setState(
                        () {
                          tl = false;
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => doughnut()),
                          );
                        },
                      );
                    },
                    onTapDown: (details) {
                      setState(
                        () {
                          tl = true;
                        },
                      );
                    },
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: tl
                              ? []
                              : [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.8),
                                    offset: Offset(-6.0, -6.0),
                                    blurRadius: 16.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(6.0, 6.0),
                                    blurRadius: 16.0,
                                  ),
                                ],
                          color: Color(0xFFEFEEEE),
                          borderRadius: BorderRadius.circular(122.0),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                'Line Chart',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Icon(Icons.multiline_chart),
                            ],
                          ),
                        )),
                  ),
//                  GestureDetector(
//                    onTapUp: (details) {
//                      setState(
//                        () {
//                          tr = false;
//                        },
//                      );
//                    },
//                    onTapDown: (details) {
//                      setState(
//                        () {
//                          tr = true;
//                        },
//                      );
//                    },
//                    child: AnimatedContainer(
//                      duration: Duration(milliseconds: 200),
//                      width: 100,
//                      height: 100,
//                      decoration: BoxDecoration(
//                        boxShadow: tr
//                            ? []
//                            : [
//                                BoxShadow(
//                                  color: Colors.white.withOpacity(0.8),
//                                  offset: Offset(-6.0, -6.0),
//                                  blurRadius: 16.0,
//                                ),
//                                BoxShadow(
//                                  color: Colors.black.withOpacity(0.1),
//                                  offset: Offset(6.0, 6.0),
//                                  blurRadius: 16.0,
//                                ),
//                              ],
//                        color: Color(0xFFEFEEEE),
//                        borderRadius: BorderRadius.circular(122.0),
//                      ),
//                    ),
//                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
//                  GestureDetector(
//                    onTapUp: (details) {
//                      setState(
//                        () {
//                          bl = false;
//                        },
//                      );
//                    },
//                    onTapDown: (details) {
//                      setState(
//                        () {
//                          bl = true;
//                        },
//                      );
//                    },
//                    child: AnimatedContainer(
//                      duration: Duration(milliseconds: 200),
//                      width: 100,
//                      height: 100,
//                      decoration: BoxDecoration(
//                        boxShadow: bl
//                            ? []
//                            : [
//                                BoxShadow(
//                                  color: Colors.white.withOpacity(0.8),
//                                  offset: Offset(-6.0, -6.0),
//                                  blurRadius: 16.0,
//                                ),
//                                BoxShadow(
//                                  color: Colors.black.withOpacity(0.1),
//                                  offset: Offset(6.0, 6.0),
//                                  blurRadius: 16.0,
//                                ),
//                              ],
//                        color: Color(0xFFEFEEEE),
//                        borderRadius: BorderRadius.circular(122.0),
//                      ),
//                    ),
//                  ),
                  GestureDetector(
                    onTapUp: (details) {
                      setState(
                        () {
                          br = false;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MonthlyExpensesView()),
                          );
                        },
                      );
                    },
                    onTapDown: (details) {
                      setState(
                        () {
                          br = true;
                        },
                      );
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      width: 100,
                      height: 100,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Pie Chart',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            Icon(Icons.pie_chart),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        boxShadow: br
                            ? []
                            : [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.8),
                                  offset: Offset(-6.0, -6.0),
                                  blurRadius: 16.0,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(6.0, 6.0),
                                  blurRadius: 16.0,
                                ),
                              ],
                        color: Color(0xFFEFEEEE),
                        borderRadius: BorderRadius.circular(122.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
