import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/apptheme.dart';
import '../singin/sigin_in_manager.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 15)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const SignInManagerScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: SvgPicture.asset(
          'assets/images/cleverStaffLogo.svg',
          color: AppColor.primarybackgroundColor,
        ),
      ),
    );
  }
}
