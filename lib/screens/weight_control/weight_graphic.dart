import 'package:diyet/screens/weight_control/weights.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WeightGraphic extends StatefulWidget {
  @override
  _WeightGraphicState createState() => _WeightGraphicState();
}

class _WeightGraphicState extends State<WeightGraphic> {
  List<Weights> kilolar = [
    Weights(kilo:65,tarih: "10.6"),
    Weights( kilo:70,tarih:  "11.6"),
    Weights(kilo: 80, tarih: "12.6"),
    Weights(kilo: 75, tarih: "13.6"),
  ];
  String grup="";

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
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.99,
              height: MediaQuery.of(context).size.height * 0.45,
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                series: <ChartSeries>[
                  LineSeries<Weights, String>(
                      dataSource: kilolar,
                      xValueMapper: (Weights kilo, _) => kilo.tarih,
                      yValueMapper: (Weights kilo, _) => kilo.kilo,
                    dataLabelSettings: DataLabelSettings(isVisible: true)
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(children: [
                  Radio(value: "Günlük", groupValue: grup, onChanged: (val){setState(() {grup=val;});}),
                  Text("Günlük")
                ],),
                Row(children: [
                  Radio(value: "Haftalık", groupValue: grup, onChanged: (val){setState(() {grup=val;});}),
                  Text("Haftalık")
                ],)
              ],
            ),
            FlatButton(
                onPressed: () =>
                    Navigator.pushNamed(context, "/body_mass_index"),
                child: Text("indeks")),
          ],
        ),
      ),
    );
  }
}
