import 'package:flutter/material.dart';

class Count extends ChangeNotifier {
  int index = 0;

  int get count => index;

  void increaseNumber(int count) {
    count++;
    index = count;
    notifyListeners();
  }

  void decreaseNumber(int count) {
    count--;
    index = count;
    notifyListeners();
  }
}
