import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WeeklyProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0, iconTheme: IconThemeData(color: Colors.black),),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
                child: GridView.count(
                  primary: false,
                  mainAxisSpacing: 15,
                  padding: EdgeInsets.only(left: 55,right: 55,top: 10),
                  crossAxisSpacing: 50,
                  crossAxisCount: 2,
                  children: [
                    customCard(context, "Pazartesi", "/weekly_program"),
                    customCard(context, "Salı", "/weekly_program"),
                    customCard(context, "Çarşamba", "/weekly_program"),
                    customCard(context, "Perşembe", "/weekly_program"),
                    customCard(context, "Cuma", "/weekly_program"),
                    customCard(context, "Cumartesi", "/weekly_program"),
                    customCard(context, "Pazar", "/weekly_program"),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget customCard(BuildContext context, String title, String routeName) {
    return Card(
      elevation: 15,
      color: Colors.amber,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)),
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(gradient: LinearGradient(
              colors: [Color(0xFFA9E9F6), Colors.white],
              stops: [0.1, 0.9],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ), borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Center(child:
            Text(title, textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,),)
          ,),
        ),
      ),
    );
  }
}