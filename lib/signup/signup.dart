import 'package:clevestaff/Provider/Sign_up_todos_provider.dart';
import 'package:clevestaff/config/apptheme.dart';
import 'package:clevestaff/config/static_assets.dart';
import 'package:clevestaff/signup/account_info.dart';
import 'package:clevestaff/signup/personal_info.dart';
import 'package:clevestaff/signup/phone.dart';
import 'package:clevestaff/signup/salary_info.dart';
import 'package:clevestaff/signup/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _pageController = PageController();
  final List<Widget> screens = [
    const PersonalInfo(),
    const AccountInfo(),
    const SalaryInfo(),
    const PhoneInfo(),
    const VeriFication()
  ];

  List<String> tabIcons = [
    StaticAssets.personIcon,
    StaticAssets.salaryIcon,
    StaticAssets.phoneIcon,
  ];

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<SignUpProvider>(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.scaffoldBackground,
        title: RichText(
          text: TextSpan(
              style: TextStyle(
                  color: AppColor.textColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lato'),
              children: [
                const TextSpan(
                  text: 'Sign up',
                ),
                TextSpan(
                  text: '  ${counter.activePage + 1}/5',
                  style: TextStyle(
                    color: AppColor.primaryColor,
                  ),
                ),
              ]),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 25),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(
                  color: tabIcons.length < 2
                      ? AppColor.primaryColor
                      : AppColor.scaffoldBackground,
                  style: BorderStyle.solid,
                  width: 4,
                ))),
                height: 40,
                child: Row(
                  children: List.generate(
                    tabIcons.length,
                    (index) => Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        decoration: BoxDecoration(
                            border: BorderDirectional(
                          bottom: BorderSide(
                            color: counter.getBottomBorderColor(index),
                          ),
                        )),
                        height: 25,
                        child: SvgPicture.asset(
                          tabIcons[index],
                          color: counter.getSVGcolor(index, counter.activePage),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              counter.activePage < 2
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: BorderDirectional(
                              bottom: BorderSide(
                                  color: counter.activePage == 0
                                      ? AppColor.primaryColor
                                      : AppColor.appGrey),
                            )),
                            height: 30,
                            child: Text(
                              '1.Personal',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: counter.activePage == 0
                                      ? AppColor.primaryColor
                                      : AppColor.appGrey),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: BorderDirectional(
                              bottom: BorderSide(
                                  color: counter.activePage == 1
                                      ? AppColor.primaryColor
                                      : AppColor.appGrey),
                            )),
                            height: 30,
                            child: Text(
                              '2.Acccount',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: counter.activePage == 1
                                      ? AppColor.primaryColor
                                      : AppColor.appGrey),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    )
                  : counter.activePage == 2
                      ? Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: BorderDirectional(
                                  bottom: BorderSide(
                                      color: counter.activePage == 2
                                          ? AppColor.primaryColor
                                          : AppColor.appGrey),
                                )),
                                height: 30,
                                child: Text(
                                  '3.Salary',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: counter.activePage == 2
                                          ? AppColor.primaryColor
                                          : AppColor.appGrey),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: BorderDirectional(
                                  bottom: BorderSide(
                                      color: counter.activePage == 3
                                          ? AppColor.primaryColor
                                          : AppColor.appGrey),
                                )),
                                height: 30,
                                child: Text(
                                  '4.Phone',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: counter.activePage == 3
                                          ? AppColor.primaryColor
                                          : AppColor.appGrey),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: BorderDirectional(
                                  bottom: BorderSide(
                                      color: counter.activePage == 4
                                          ? AppColor.primaryColor
                                          : AppColor.appGrey),
                                )),
                                height: 30,
                                child: Text(
                                  '5.Verification',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: counter.activePage == 4
                                          ? AppColor.primaryColor
                                          : AppColor.appGrey),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: screens.length,
            onPageChanged: (int page) {
              setState(() {
                counter.activePage = page;
              });
            },
            itemBuilder: (context, index) {
              return screens[index % screens.length];
            },
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return AppColor.primaryColor.withOpacity(0.5);
                        }
                        return counter.activePage < 1
                            ? AppColor.appGrey
                            : AppColor.primaryColor;
                      },
                    ),
                  ),
                  onPressed: () {
                    if (counter.activePage > 0) {
                      _pageController.animateToPage(
                        counter.activePage - 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                      setState(() {
                        counter.decrementPage();
                      });
                    }
                  },
                  child: const Text('Previous'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signin');
                  },
                  child: const Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (counter.activePage < screens.length - 1) {
                      _pageController.animateToPage(
                        counter.activePage + 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                      setState(() {
                        counter.incrementPage();
                      });
                    } else {}
                  },
                  child: counter.activePage == screens.length - 1
                      ? const Text('Submit')
                      : const Text('Next'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
