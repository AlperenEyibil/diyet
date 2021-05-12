import 'package:diyet/screens/diets/diet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DietDetails extends StatelessWidget{
  DietDetails(this._diet);
  Diet _diet;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_diet.dietname,style: TextStyle(color: Colors.lightBlueAccent,fontSize: 28),),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.lightBlueAccent, size: 30),
      ),
      body: Container(
        child: ListView(
          children: [
            Align(
              alignment: Alignment(-0.9,0),
              child: SizedBox(height: 30,
                child: Text("Faydaları",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment(-0.9,0),
              child: Card(elevation: 0,
                child: Text(_diet.dietbenefit,style: TextStyle(fontSize: 18),),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment(-0.9,0),
              child: SizedBox(height: 30,
                child: Text("Etkileri",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment(-0.9,0),
              child: Card(elevation: 0,
                child: Text(_diet.dieteffect,style: TextStyle(fontSize: 18),),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment(-0.9,0),
              child: SizedBox(height: 30,
                child: Text("Uygulanışı",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment(-0.9,0),
              child: Card(elevation: 0,
                child: Text(_diet.dieting,style: TextStyle(fontSize: 18),),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

}