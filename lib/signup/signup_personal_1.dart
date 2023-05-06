import 'package:clevestaff/signup/signup_personal_tab_1.dart';
import 'package:clevestaff/signup/sigup_personal_tab-2.dart';
import 'package:clevestaff/signup/singup_personal_tab_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/apptheme.dart';

class SignUpScreen1 extends StatefulWidget {
  const SignUpScreen1({super.key});

  @override
  State<SignUpScreen1> createState() => _SignUpScreen1State();
}

class _SignUpScreen1State extends State<SignUpScreen1> {
  int _selectedIndex = 0;
  final int _subSelectedIndex = 0;
  final List<String> _tabICons = [
    'assets/images/person.svg',
    'assets/images/Salary.svg',
    'assets/images/phone.svg',
  ];

  final List<Widget> _tabView = [
    const TabBar1(),
    const TabBar2(),
    const TabBar3()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(TextSpan(children: [
          TextSpan(
              text: 'Sign up ',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: AppColor.textColor)),
          TextSpan(
              text: "${_selectedIndex + 1}/5",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: AppColor.primaryColor)),
        ])),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(children: [
        Row(
          children: List.generate(_tabICons.length, (index) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    index == 0
                        ? _selectedIndex = _subSelectedIndex
                        : _selectedIndex = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColor.scaffoldBackground,
                      border: BorderDirectional(
                          bottom: BorderSide(
                              color: _selectedIndex == index
                                  ? Colors.blue
                                  : AppColor.scaffoldBackground,
                              width: 2))),
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Center(
                    child: SvgPicture.asset(_tabICons[index],
                        color: index == _selectedIndex
                            ? AppColor.primaryColor
                            : AppColor.appGrey),
                  ),
                ),
              ),
            );
          }),
        ),
        Expanded(
          child: IndexedStack(
            index: _selectedIndex,
            children: _tabView,
          ),
        ),
      ]),
    );
  }
}
