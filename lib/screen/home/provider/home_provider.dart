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
    i=i*i;
    notifyListeners();
  }
  void x3()
  {
    i=i*i*i;
    notifyListeners();
  }
  void x4()
  {
    i=i*i*i*i;
    notifyListeners();
  }
  void x5()
  {
    i=i*i*i*i*i;
    notifyListeners();
  }
}