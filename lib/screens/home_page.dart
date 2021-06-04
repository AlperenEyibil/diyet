import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
              child: GridView.count(
                primary: false,
            mainAxisSpacing: 45,
            padding: EdgeInsets.only(left: 55,right: 55,top: 100),
            crossAxisSpacing: 30,
            crossAxisCount: 2,
            children: [
              customCard(context,"Kalori İşlemleri", Icons.calculate_outlined,"/calorie_main_page"),
              customCard(context,"Haftalık Program", Icons.calendar_today,"/weekly_program"),
              customCard(context,"Diyet Türleri", Icons.accessibility,"/diet_types"),
              customCard(context,"Yemek Tarifleri", Icons.local_dining,"/food_list"),
              customCard(context,"Egzersizler", Icons.run_circle_outlined,"/weekly_program"),
              customCard(context,"Kilo Takibi", Icons.line_weight,"/weight_graphic"),
            ],
          ))
        ],
      ),
    );
  }

  Widget customCard(BuildContext context, String title, IconData icons, String routeName){
    return Card(
      elevation: 15,
      color: Colors.amber,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, routeName);
        },
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(gradient: LinearGradient(
              colors: [Color(0xFFA9E9F6), Colors.white],
              stops: [0.1,0.9],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ), borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Center(child: Column(children: [Icon(icons,size: 64,), Text(title, textAlign: TextAlign.center,style: TextStyle(fontSize: 18,),)],),),
        ),
      ),
    );
  }
}
