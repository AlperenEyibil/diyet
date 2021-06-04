import 'package:flutter/material.dart';

class WeightGraphic extends StatefulWidget{
  @override
  _WeightGraphicState createState() => _WeightGraphicState();
}

class _WeightGraphicState extends State<WeightGraphic> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: FlatButton(onPressed: ()=>Navigator.pushNamed(context, "/body_mass_index"),
            child: Text("indeks")),
      ),
    );
  }
}