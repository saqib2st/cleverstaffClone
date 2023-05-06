// import 'package:clevestaff/screen/home.dart';

import 'package:clevestaff/screen/loading.dart';
import 'package:clevestaff/signup/signup_personal_1.dart';
import 'package:clevestaff/signup/sigup_personal_tab-2.dart';
import 'package:clevestaff/singin/sigin_in_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: LoadingScreen(),
    initialRoute: '/',
    routes: {
      '/': (context) => const LoadingScreen(),
      '/signup1': (context) => const SignUpScreen1(),
      '/signup2': (context) => const TabBar2(),
      '/signin': (context) => const SignInManagerScreen(),
    },
  ));
}
