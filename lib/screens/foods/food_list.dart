import 'package:diyet/screens/foods/food.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodList extends StatelessWidget {


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
          return Hero(
            tag: "hero",
            child: Card(
              elevation: 0,
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(foods[index].imagedir),
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
