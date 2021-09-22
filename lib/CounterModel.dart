import 'package:flutter/cupertino.dart';

class CounterModel with ChangeNotifier{
  int counterVal=0;
  Color counterColor;

  CounterModel(this.counterColor);

  void add(bool up){
    if(up)
      counterVal++;
    else
      counterVal--;
    notifyListeners();
  }

  void reset(){
    counterVal = 0;
    notifyListeners();
  }
}