import 'dart:ffi';

import 'package:diyet/screens/weight_control/weights.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WeightGraphic extends StatefulWidget {
  @override
  _WeightGraphicState createState() => _WeightGraphicState();
}

class _WeightGraphicState extends State<WeightGraphic> {
  List<Weights> kilolar = [
    Weights(kilo: 65, tarih: "10.6"),
    Weights(kilo: 70, tarih: "11.6"),
    Weights(kilo: 80, tarih: "12.6"),
    Weights(kilo: 75, tarih: "13.6"),
  ];
  String grup = "";
  TextEditingController _gkilo = TextEditingController();
  TextEditingController _hkilo = TextEditingController();
  double fark=0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      dataLabelSettings: DataLabelSettings(isVisible: true))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Radio(
                        value: "Günlük",
                        groupValue: grup,
                        onChanged: (val) {
                          setState(() {
                            grup = val;
                          });
                        }),
                    Text("Günlük")
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: "Haftalık",
                        groupValue: grup,
                        onChanged: (val) {
                          setState(() {
                            grup = val;
                          });
                        }),
                    Text("Haftalık")
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(child: Text("Güncel Kilo",style: TextStyle(fontSize: 16),),width: 100,),
                Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 65,
                      child: TextField(
                          style: TextStyle(fontSize: 18),
                          controller: _gkilo,
                          maxLines: 1,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(6),
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter(RegExp(r'(^\d*\.?\d*)')),
                            LengthLimitingTextInputFormatter(5)
                          ]),
                    ),
                    SizedBox(width: 10,),
                    InkWell(child: Icon(Icons.check,color: Colors.lightBlueAccent,)),
                  ],
                )
              ],
            ),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(child: Text("Hedef Kilo",style: TextStyle(fontSize: 16),),width: 100,),
                Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 65,
                      child: TextField(
                          style: TextStyle(fontSize: 18),
                          controller: _hkilo,
                          maxLines: 1,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(6),
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter(RegExp(r'(^\d*\.?\d*)')),
                            LengthLimitingTextInputFormatter(5)
                          ]),
                    ),
                    SizedBox(width: 10,),
                    InkWell(child: Icon(Icons.check,color: Colors.lightBlueAccent,)),
                  ],
                )
              ],
            ),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(child: Text("Hedefe Kalan",style: TextStyle(fontSize: 16),),width: 100,),
                SizedBox(width: 100,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFFA9E9F6),
                        shape: BoxShape.circle,
                        border: Border.all(width: 2)),
                    child: Center(
                      child: Text("$fark",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: SizedBox()),
            FlatButton(
                shape: Border.all(width: 2,color: Colors.blueGrey),
                onPressed: () =>
                    Navigator.pushNamed(context, "/body_mass_index"),
                child: Text("Vücut İndeksi Hesapla",style: TextStyle(fontSize: 18),)),
          ],
        ),
      ),
    );
  }
}
