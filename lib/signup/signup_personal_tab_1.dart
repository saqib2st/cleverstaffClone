import 'package:clevestaff/signup/tab_account.dart';
import 'package:clevestaff/signup/tab_personal.dart';
import 'package:flutter/material.dart';

import '../config/apptheme.dart';

class TabBar1 extends StatefulWidget {
  const TabBar1({super.key});

  @override
  State<TabBar1> createState() => _TabBar1State();
}

class _TabBar1State extends State<TabBar1> {
  int _selectedIndex = 0;
  final List<String> _tabICons = [
    '1.Personal',
    '2.Account',
  ];

  final List<Widget> _tabView = [const PersonalInfo(), const AccountInfo()];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Material(
          elevation: 3,
          child: Row(
            children: List.generate(_tabICons.length, (index) {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
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
                        child: Text(
                      _tabICons[index],
                      style: TextStyle(
                          color: _selectedIndex == index
                              ? AppColor.primaryColor
                              : AppColor.appGrey),
                    )),
                  ),
                ),
              );
            }),
          ),
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
