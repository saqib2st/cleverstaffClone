import 'package:clevestaff/Provider/Sign_up_todos_provider.dart';
import 'package:clevestaff/screen/loading.dart';
import 'package:clevestaff/signup/signup.dart';
import 'package:clevestaff/singin/sigin_in_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<SignUpProvider>(
        create: (context) => SignUpProvider(),
      ),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoadingScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoadingScreen(),
        '/signup1': (context) => const SignUp(),
        '/signin': (context) => const SignInManagerScreen(),
      },
    ),
  ));
}
