import 'package:diyet/screens/calories/calorie_calculater.dart';
import 'package:diyet/screens/calories/calorie_main_page.dart';
import 'package:diyet/screens/calories/calorie_ruler.dart';
import 'package:diyet/screens/diets/diet_types.dart';
import 'package:diyet/screens/foods/food_list.dart';
import 'package:diyet/screens/weekly/repast.dart';
import 'package:diyet/screens/weekly/weekly_program.dart';
import 'package:diyet/screens/weekly/repast_settings.dart';
import 'package:diyet/screens/weight_control/body_mass_index.dart';
import 'package:diyet/screens/weight_control/weight_graphic.dart';
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

      initialRoute: "/",
      routes: {
        "/":(context)=>HomePage(),
        "/weekly_program":(context)=>WeeklyProgram(),
        "/repast":(context)=>Repasts(),
        "/repastsettings": (context)=>RepastSettings(),
        "/food_list": (context)=>FoodList(),
        "/diet_types":(context)=>DietTypes(),
        "/calorie_main_page" :(context)=>CalorieMainPage(),
        "/calorie_ruler":(context)=>CalorieRuler(),
        "/calorie_calculater":(context)=>CalorieCalculater(),
        "/weight_graphic":(context)=>WeightGraphic(),
        "/body_mass_index":(context)=>BodyMassIndex(),
      },
    );
  }
}