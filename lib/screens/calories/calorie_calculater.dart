import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'calorie.dart';

class CalorieCalculater extends StatefulWidget{
  @override
  _CalorieCalculaterState createState() => _CalorieCalculaterState();
}

class _CalorieCalculaterState extends State<CalorieCalculater> {

  int sayi=1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: myAppbar(),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: sayi,
                itemBuilder: (context,index){
                  return;
                },
              ),
            ),
            FlatButton(onPressed: (){}, child: Text("Hesapla"), color:  Colors.black38,),
            Align(
              alignment: Alignment(0.9,0.9),
              child: FloatingActionButton(
                onPressed: (){
                  setState(() {
                    sayi++;
                  });
                },
                child: Icon(Icons.plus_one),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myAppbar(){
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.lightBlueAccent, size: 30),
      actionsIconTheme: IconThemeData(color: Colors.lightBlueAccent, size: 36),
      actions: [
        GestureDetector(
          onTap: () {
            customDialog();
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.straighten),
          ),
        )
      ],
    );
  }


  Future<dynamic> customDialog(){
    return showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
              actions: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  height: MediaQuery.of(context).size.height*0.8,
                  width: MediaQuery.of(context).size.width*0.8,
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
                )
              ]
          );
        });
}
}
