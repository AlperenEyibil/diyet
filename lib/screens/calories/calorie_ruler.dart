import 'package:diyet/screens/calories/calorie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalorieRuler extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFA9E9F6),
        iconTheme: IconThemeData(color: Colors.lightBlueAccent, size: 30),
        title: Text("100 gr.da cal Değeri",style: TextStyle(color: Colors.black)), centerTitle: true,
      ),
      body: Container(
        color: Color(0xFFA9E9F6),
        child: ListView.builder(
          itemCount: calories.length,
          itemBuilder: (BuildContext context, int index){
            return Card(
              color: Colors.transparent,
                elevation: 0,
                child: ListTile(
                    leading:CircleAvatar(radius: 30,backgroundColor: Colors.white,
                        backgroundImage: AssetImage(calories[index].imagedir),
                      ),
                    title: Text(calories[index].caloriename,style: TextStyle(fontSize: 18),),
                    trailing: Text("${calories[index].calorievalue}",style: TextStyle(fontSize: 18)),
                ),
            );
          },
        ),
      ),
    );
  }

}