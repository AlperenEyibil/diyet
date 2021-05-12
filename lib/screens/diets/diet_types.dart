import 'package:diyet/screens/diets/diet.dart';
import 'package:diyet/screens/diets/diet_details.dart';
import 'package:flutter/material.dart';

class DietTypes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.lightBlueAccent, size: 30),
      ),
      body: ListView.builder(
            itemCount: diets.length,
            itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DietDetails(diets[index])));
              },
              child: Card(margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                elevation: 8,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text(diets[index].dietname,style: TextStyle(fontSize: 26),),),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFFA9E9F6), Colors.white],
                        stops: [0.1,0.9],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
            );
        }),
    );
  }

}