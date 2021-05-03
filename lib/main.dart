import 'package:diyet/screens/weekly_program.dart';
import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      initialRoute: "/",
      routes: {
        "/":(context)=>HomePage(),
        "/weekly_program":(context)=>WeeklyProgram(),
      },
    );
  }
}