import 'package:clevestaff/config/apptheme.dart';
import 'package:flutter/material.dart';

class SignUpProvider with ChangeNotifier {
  int _activePage = 0;

  int get activePage => _activePage;

  set activePage(int value) {
    _activePage = value;
  }

  void incrementPage() {
    if (_activePage < 4)   {
      _activePage++;
      notifyListeners();
    }
  }

  void decrementPage() {
    if (_activePage > 0) {
      _activePage--;
      notifyListeners();
    }
  }

  void resetPage() {
    _activePage = 0;
    notifyListeners();
  }

  Color getBottomBorderColor(int index) {
    if (activePage == 0 && index == 0 ||
        activePage == 1 && index == 0 ||
        activePage == 2 && index == 1 ||
        activePage == 3 && index == 2 ||
        activePage == 4 && index == 2) {
      return AppColor.primaryColor;
    } else {
      return AppColor.scaffoldBackground;
    }
  }

  Color getSVGcolor(int index, int activePage) {
    if (activePage == 0 && index == 0 ||
        activePage == 1 && index == 0 ||
        activePage == 2 && index == 1 ||
        activePage == 3 && index == 2 ||
        activePage == 4 && index == 2) {
      return AppColor.primaryColor;
    } else {
      return AppColor.appGrey;
    }
  }
}
