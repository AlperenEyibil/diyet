import 'package:diyet/screens/foods/food.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodDescription extends StatefulWidget {
  FoodDescription(this._food);

  Food _food;

  @override
  _FoodDescriptionState createState() => _FoodDescriptionState(_food);
}

class _FoodDescriptionState extends State<FoodDescription> {
  _FoodDescriptionState(this._food);

  Food _food;
  List<String> categories = ["Açıklama", "Malzemeler", "Besin Değerleri"];

  int selectedindex=0;

  @override
  Widget build(BuildContext context) {
    List<String> catinside=[_food.fooddescription,_food.foodingredients,_food.foodvalues];

    // TODO: implement build
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: false,
          snap: false,
          floating: false,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            background: Hero(
              tag: _food,
              child: Image(
                image: AssetImage(_food.imagedir),
              ),
            ),
          ),
        ),
        SliverPadding(padding: EdgeInsets.only(top: 5, bottom: 5)),
        SliverToBoxAdapter(
          child: Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => _buildCategories(index),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child:Card(margin: EdgeInsets.all(20),elevation: 0,
              child: Text(catinside[selectedindex],
              style: TextStyle(fontSize: 18),),
          ),
        ),
        SliverPadding(padding: EdgeInsets.symmetric(vertical: 10))
      ],
    ));
  }

  Widget _buildCategories(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedindex=index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              SizedBox(
                  width: 85,
                  height: 40,
                  child: Center(
                    child: Text(
                      categories[index],textAlign: TextAlign.center,
                      style: TextStyle(color: selectedindex==index?Colors.black:Colors.black54,fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  )),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 2,
                width: 55,
                color: selectedindex==index ? Colors.black : Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
