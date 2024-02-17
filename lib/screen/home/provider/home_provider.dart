import 'package:flutter/cupertino.dart';

class Provider1 with ChangeNotifier{
  int i=0;
  void add1()
  {
    i++;
    notifyListeners();
  }
  void remove1()
  {
    i--;
    notifyListeners();
  }
  void x2()
  {
    i=i*2;
    notifyListeners();
  }
  void x3()
  {
    i=i*3;
    notifyListeners();
  }
  void x4()
  {
    i=i*4;
    notifyListeners();
  }
  void x5()
  {
    i=i*5;
    notifyListeners();
  }
}
