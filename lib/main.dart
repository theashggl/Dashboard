import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:dashboard/doughnut.dart';

void main() => runApp(NeumorphicApp());

class NeumorphicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: NeuAppBar(
        title: Text('Dashboard'),
      ),
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//        scaffoldBackgroundColor: Color(0XFFEFF3F6),
//      ),

        body: Builder(
          builder: (context) => NeuButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => doughnut(),
                ),
              );
            },
            child: Text('Button'),
          ),
        ),
      ),
    );
  }
}
