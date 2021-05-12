import 'package:diyet/screens/foods/food.dart';
import 'package:diyet/screens/foods/food_description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {


  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.lightBlueAccent, size: 30),
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodDescription(foods[index])));
            },
              child: Card(
                elevation: 0,
                child: ListTile(
                    leading: Hero(tag: foods[index],
                      child: CircleAvatar(radius: 30,backgroundColor: Colors.white,
                        backgroundImage: AssetImage(foods[index].imagedir),
                      ),
                    ),
                    title: Text(foods[index].foodname),
                    subtitle: Text(foods[index].foodtitle)
                ),
              ),
          );
        },
      ),
    );
  }
}
