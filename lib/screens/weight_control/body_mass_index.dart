import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BodyMassIndex extends StatefulWidget {
  @override
  _BodyMassIndexState createState() => _BodyMassIndexState();
}

class _BodyMassIndexState extends State<BodyMassIndex> {

  TextEditingController _kg=TextEditingController();
  TextEditingController _boy=TextEditingController();
  double bmi;
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
           calculater(),
          ],
        ),
      ),
    );
  }

  Widget calculater(){
    return Column(
      children: [
        Row(
          children: [
            Flexible(
                flex: 1,
                child: SizedBox(width: 70, height: 30,
                  child: Text(
                    "Kilo(Kg)",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )),
            Flexible(
                flex: 1,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                )),
            Flexible(
              flex: 1,
              child: SizedBox(
                height: 30,
                width: 65,
                child: TextField(style: TextStyle(fontSize: 18),
                    controller: _kg,
                    maxLines: 1,
                    decoration: InputDecoration(contentPadding: EdgeInsets.all(6),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter(RegExp(r'(^\d*\.?\d*)')),
                      LengthLimitingTextInputFormatter(5)
                    ]
                ),
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(height: 16,),
        Row(
          children: [
            Flexible(
                flex: 1,
                child: SizedBox(width: 70,height: 30,
                  child: Text(
                    "Boy(m)",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )),
            Flexible(
                flex: 1,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                )),
            Flexible(
              flex: 1,
              child: SizedBox(
                height: 30,
                width: 65,
                child: TextField(style: TextStyle(fontSize: 18),
                    controller: _boy,
                    maxLines: 1,
                    decoration: InputDecoration(contentPadding: EdgeInsets.all(6),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter(RegExp(r'(^\d*\.?\d*)')),
                      LengthLimitingTextInputFormatter(4)
                    ]
                ),
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(height: 16,),
        FlatButton(onPressed: (){
          bmi=double.parse(_kg.text)/(double.parse(_boy.text)*double.parse(_boy.text));
          print(bmi);
        }, child: Text("Hesapla",style: TextStyle(fontSize: 18),),)
      ],
    );
  }
}
