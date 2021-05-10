import 'package:diyet/screens/weekly/weekly_sharedpreferences.dart';
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
    WeeklyPreferences pref=new WeeklyPreferences();
    List<String> ogunler= List(6);
    ogunler[0]=_kahvalti.text ?? "";
    ogunler[1]=_kahvaltiara.text ?? "";
    ogunler[2]=_ogle.text ?? "";
    ogunler[3]=_ogleara.text ?? "";
    ogunler[4]=_aksam.text ?? "";
    ogunler[5]=_atistirmalik.text ?? "";
    // for (int i=0;i<ogunler.length;i++)
    //   print(ogunler[i]);
    pref.yenile(ogunler);
    // if(day=="Pazartesi")
    //   pref.yenile(day, ogunler);
    // else if(day=="Salı")
    //   pref.yenile(day, ogunler);
    // else if(day=="Çarşamba")
    //   pref.yenile(day, ogunler);
    // else if(day=="Perşembe")
    //   pref.yenile(day, ogunler);
    // else if(day=="Cuma")
    //   pref.yenile(day, ogunler);
    // else if(day=="Cumartesi")
    //   pref.yenile(day, ogunler);
    // else if(day=="Pazar")
    //   pref.yenile(day, ogunler);
    // else
    //   print("Hata");
  }
}
