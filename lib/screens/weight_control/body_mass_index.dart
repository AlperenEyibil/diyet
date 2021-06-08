import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BodyMassIndex extends StatefulWidget {
  @override
  _BodyMassIndexState createState() => _BodyMassIndexState();
}

class _BodyMassIndexState extends State<BodyMassIndex> {
  bool isVisible = false;
  TextEditingController _kg = TextEditingController();
  TextEditingController _boy = TextEditingController();
  double bmi;
  String stringBMI = "0";
  String image = "assets/wally.jpg";
  String derece = "";

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
            calculater(),
            SizedBox(
              height: 16,
            ),
            bmiResult()
          ],
        ),
      ),
    );
  }

  Widget bmiResult() {
    return Visibility(
      visible: isVisible,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
            ),
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Image.asset(image)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Column(
              children: [
                Text(
                  "İndeks",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Color(0xFFA9E9F6),
                      shape: BoxShape.circle,
                      border: Border.all(width: 2)),
                  child: Center(
                    child: Text("${stringBMI}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: 80,
                  height: 100,
                  child: Text(
                    derece,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget calculater() {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
                flex: 1,
                child: SizedBox(
                  width: 70,
                  height: 30,
                  child: Text(
                    "Kilo(Kg)",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                child: TextField(
                    style: TextStyle(fontSize: 18),
                    controller: _kg,
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
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Flexible(
                flex: 1,
                child: SizedBox(
                  width: 70,
                  height: 30,
                  child: Text(
                    "Boy(m)",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                child: TextField(
                    style: TextStyle(fontSize: 18),
                    controller: _boy,
                    maxLines: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(6),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter(RegExp(r'(^\d*\.?\d*)')),
                      LengthLimitingTextInputFormatter(4)
                    ]),
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 16,
        ),
        FlatButton(
          onPressed: () {
            FocusScope.of(context).requestFocus(new FocusNode());
            setState(() {
              if (_kg.text != "" && _boy.text != "") {
                isVisible = true;
                bmi = double.parse(_kg.text) /
                    (double.parse(_boy.text) * double.parse(_boy.text));
                stringBMI = bmi.toStringAsFixed(2);
                if (bmi < 18.5) {
                  image = "assets/wally.png";
                  derece = "İdealin altı";
                } else if (bmi < 25) {
                  image = "assets/robin.png";
                  derece = "İdeal";
                } else if (bmi < 30) {
                  image = "assets/batman.png";
                  derece = "İdealin üstü";
                } else {
                  image = "assets/unnamed.png";
                  derece = "İdealin çok üstü";
                }
              }
            });
          },
          child: Text(
            "Hesapla",
            style: TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }
}
