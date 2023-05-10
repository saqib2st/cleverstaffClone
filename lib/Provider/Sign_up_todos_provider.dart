// import 'package:cleverstaff/cubits/app/app_cubit.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpProvider extends ChangeNotifier {
  final controller = PageController();
  final signupPageController = PageController();
  int currentIconTab = 0;
  bool isEmailAvailable = true;
  bool isCancel = false;
  int _count = 1;
  int get count => _count;
  // void isEmail(BuildContext context) {
  //   final cubit = BlocProvider.of<AppCubit>(context);

  //   if (cubit.state.isAvailable?.result?.isExist == false) {
  //     isEmailAvailable = true;
  //   } else {
  //     isEmailAvailable = false;
  //   }
  //   notifyListeners();
  // }

  void cancelAll(BuildContext context) {
    // final cubit = BlocProvider.of<AppCubit>(context);
    // cubit.checkAvailabilityInitial();
    isCancel = true;
    counter(1);
    controller.initialPage;
    signupPageController.initialPage;
    isEmailAvailable = true;
    currentIconTab = 0;
    notifyListeners();
  }

  void counter(int a) {
    _count = a;
    notifyListeners();
  }

  void counterTab(int a) {
    currentIconTab = a;
    notifyListeners();
  }

  void previousTab() {
    controller.previousPage(
        duration: const Duration(microseconds: 1), curve: Curves.easeIn);
    notifyListeners();
  }

  void nextTab() {
    controller.nextPage(
        duration: const Duration(microseconds: 1), curve: Curves.easeIn);
    notifyListeners();
  }

  void previousPage() {
    counter(count - 1);

    signupPageController.previousPage(
        duration: const Duration(milliseconds: 100), curve: Curves.easeIn);
    notifyListeners();
  }

  void nextPage() {
    counter(count + 1);
    signupPageController.nextPage(
        duration: const Duration(milliseconds: 100), curve: Curves.easeIn);
    notifyListeners();
  }

  void onPressedNext() {
    if (count < 5) {
      if (count == 1) {
        isEmailAvailable = false;

        nextPage();
      } else {
        nextPage();
      }

      if (count == 3 || count == 4) {
        counterTab(currentIconTab + 1);
        nextTab();
      }
    }

    notifyListeners();
  }

  void onPressedPrevious() {
    if (count > 1) {
      if (count == 2) {
        isEmailAvailable = true;
        previousPage();
      } else {
        previousPage();
      }
    }

    if (count == 2 || count == 3) {
      counterTab(currentIconTab - 1);

      previousTab();
    }
    notifyListeners();
  }
}

