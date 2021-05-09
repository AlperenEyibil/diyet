import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RepastSettings extends StatelessWidget {

  TextEditingController _kahvalti= TextEditingController();
  TextEditingController _kahvaltiara= TextEditingController();
  TextEditingController _ogle= TextEditingController();
  TextEditingController _ogleara= TextEditingController();
  TextEditingController _aksam= TextEditingController();
  TextEditingController _atistirmalik= TextEditingController();

  @override
  Widget build(BuildContext context) {
    final String day = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.lightBlueAccent, size: 30),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              child: Icon(Icons.check),
              onTap: () {
                gonderme(day);
              },
            ),
          )
        ],
      ),
      body: Container(
       // height: MediaQuery.of(context).size.height,
          child: ListView(padding: EdgeInsets.all(10),
              children: [
                TextField(controller: _kahvalti,
                  decoration: InputDecoration(
                    hintText: "Kahvaltı",
                  ),maxLines: 3,
                ),
                TextField(
                  controller: _kahvaltiara,
                  decoration: InputDecoration(
                      hintText: "Ara Öğün"
                  ),maxLines: 3,
                ),
                TextField(
                  controller: _ogle,
                  decoration: InputDecoration(
                      hintText: "Öğle Yemeği"
                  ),maxLines: 3,
                ),
                TextField(
                  controller: _ogleara,
                  decoration: InputDecoration(
                      hintText: "Ara Öğün"
                  ),maxLines: 3,
                ),
                TextField(
                  controller: _aksam,
                  decoration: InputDecoration(
                      hintText: "Akşam Yemeği"
                  ),maxLines: 3,
                ),
                TextField(
                  controller: _atistirmalik,
                  decoration: InputDecoration(
                      hintText: "Atıştırmalık"
                  ),maxLines: 3,
                ),
              ],
            ),
      ),
    );
  }

  gonderme(String day){
    List<String> ogunler= List(6);
    ogunler[0]=_kahvalti.text;
    ogunler[1]=_kahvaltiara.text;
    ogunler[2]=_ogle.text;
    ogunler[3]=_ogleara.text;
    ogunler[4]=_aksam.text;
    ogunler[5]=_atistirmalik.text;
    if(day=="Pazartesi")
      print("Pazartesi");
    else if(day=="Salı")
      print("Salı");
    else if(day=="Çarşamba")
      print("Çarşamba");
    else if(day=="Perşembe")
      print("Perşembe");
    else if(day=="Cuma")
      print("Cuma");
    else if(day=="Cumartesi")
      print("Cumartesi");
    else if(day=="Pazar")
      print("Pazar");
    else
      print("Hata");
  }
}
