import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalorieMainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.lightBlueAccent, size: 30),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
                child: GridView.count(
                  primary: false,
                  mainAxisSpacing: 35,
                  padding: EdgeInsets.only(left: 45,right: 45,top: 100),
                  crossAxisSpacing: 30,
                  crossAxisCount: 2,
                  children: [
                    customCard(context,"Kalori Cetveli", Icons.local_dining,"/calorie_ruler"),
                    customCard(context,"Kalori Hesapla", Icons.calculate_outlined,""),
                    customCard(context,"Fotoğraf ile Kalori Hesapla", Icons.photo,""),
                    customCard(context,"Video ile Kalori Hesapla", Icons.video_call_outlined,""),
                  ],
                ))
          ],
        ),
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