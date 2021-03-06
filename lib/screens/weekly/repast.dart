
import 'package:flutter/material.dart';

class Repasts extends StatelessWidget {

  String bilgiler="boş";


  @override
  Widget build(BuildContext context) {
    final String day = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          day,
          style: TextStyle(color: Colors.lightBlueAccent, fontSize: 26),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.lightBlueAccent, size: 30),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              child: Icon(Icons.settings),
              onTap: () {
                Navigator.pushNamed(context, "/repastsettings", arguments: day);
              },
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          kolon("Kahvaltı", bilgiler),
          kolon("Ara Öğün", bilgiler),
          kolon("Öğle Yemeği", bilgiler),
          kolon("Ara Öğün", bilgiler),
          kolon("Akşam Yemeği", bilgiler),
          kolon("Atıştırmalık",bilgiler),
        ],
        padding: EdgeInsets.all(17.0),
      ),
    );
  }

  Widget kolon(String ogun, String icerik){
    return Padding(
      padding: EdgeInsets.only(top: 10,bottom: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ogun,
            style: TextStyle(fontSize: 26),
          ),
          Card(
            child: Text(
              icerik,
              style: TextStyle(fontSize: 16),
            ),
            elevation: 0,
          ),
        ],
      ),
    );
  }
}
