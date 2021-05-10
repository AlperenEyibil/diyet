import 'package:shared_preferences/shared_preferences.dart';

class WeeklyPreferences{
  WeeklyPreferences(){
  _bilgiler=["yok","yok","yok","yok","yok","yok"];
    _loadFromPrefs();
  }
  String key="key";
  SharedPreferences _pref;
  List<String> _bilgiler= List(6);
  List get bilgileriAl => _bilgiler;

  _initPrefs() async{
    if(_pref==null)
      _pref = await SharedPreferences.getInstance();
  }

  _loadFromPrefs() async{
    await _initPrefs();
    _bilgiler=_pref.getStringList(key) ?? ["yok","yok","yok","yok","yok","yok"];
  }

  _saveToPrefs()async{
    await _initPrefs();
    _pref.setStringList(key, _bilgiler);
  }
  Future <void> yenile(List<String> bilgi)async{
    _bilgiler=bilgi;



    _saveToPrefs();
    yazdir();
  }
  yazdir(){

    _loadFromPrefs();

  }
}