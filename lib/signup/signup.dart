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
  int _activePage = 0;
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
                  text: '  ${_activePage + 1}/5',
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
                            color: _activePage == 0 && index == 0 ||
                                    _activePage == 1 && index == 0 ||
                                    _activePage == 2 && index == 1 ||
                                    _activePage == 3 && index == 2 ||
                                    _activePage == 4 && index == 2
                                ? AppColor.primaryColor
                                : AppColor.scaffoldBackground,
                          ),
                        )),
                        height: 25,
                        child: SvgPicture.asset(
                          tabIcons[index],
                          color: _activePage == 0 && index == 0 ||
                                  _activePage == 1 && index == 0 ||
                                  _activePage == 2 && index == 1 ||
                                  _activePage == 3 && index == 2 ||
                                  _activePage == 4 && index == 2
                              ? AppColor.primaryColor
                              : AppColor.appGrey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              _activePage < 2
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: BorderDirectional(
                              bottom: BorderSide(
                                  color: _activePage == 0
                                      ? AppColor.primaryColor
                                      : AppColor.appGrey),
                            )),
                            height: 30,
                            child: Text(
                              '1.Personal',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: _activePage == 0
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
                                  color: _activePage == 1
                                      ? AppColor.primaryColor
                                      : AppColor.appGrey),
                            )),
                            height: 30,
                            child: Text(
                              '2.Acccount',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: _activePage == 1
                                      ? AppColor.primaryColor
                                      : AppColor.appGrey),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    )
                  : _activePage == 2
                      ? Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: BorderDirectional(
                                  bottom: BorderSide(
                                      color: _activePage == 2
                                          ? AppColor.primaryColor
                                          : AppColor.appGrey),
                                )),
                                height: 30,
                                child: Text(
                                  '3.Salary',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: _activePage == 2
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
                                      color: _activePage == 3
                                          ? AppColor.primaryColor
                                          : AppColor.appGrey),
                                )),
                                height: 30,
                                child: Text(
                                  '4.Phone',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: _activePage == 3
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
                                      color: _activePage == 4
                                          ? AppColor.primaryColor
                                          : AppColor.appGrey),
                                )),
                                height: 30,
                                child: Text(
                                  '5.Verification',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: _activePage == 4
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
                _activePage = page;
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
                  // style:ButtonStyle(
                  //   backgroundColor:_activePage<1?
                  //   AppColor.disableButtonColor:
                  //   AppColor.primaryColor;
                  // ),
                  onPressed: () {
                    if (_activePage > 0) {
                      _pageController.animateToPage(
                        _activePage - 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                      setState(() {
                        _activePage -= 1;
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
                    if (_activePage < screens.length - 1) {
                      _pageController.animateToPage(
                        _activePage + 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                      setState(() {
                        _activePage += 1;
                      });
                    } else {}
                  },
                  child: _activePage == screens.length - 1
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

// class SignUp extends StatefulWidget {
//   const SignUp({Key? key}) : super(key: key);

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   List<String> tabIcons = [
//     StaticAssets.personIcon,
//     StaticAssets.salaryIcon,
//     StaticAssets.phoneIcon,
//   ];
//   List<Widget> screens = [
//     const PersonalInfo(),
//     const AccountInfo(),
//     const SalaryInfo(),
//     const PhoneInfo(),
//     const VeriFication()
//   ];

//   @override
//   Widget build(BuildContext context) {
//     // final formkeystate = Provider.of<FormKeys>(context);
//     final counter = Provider.of<SignUpProvider>(context);
//     // final cubit = BlocProvider.of<AppCubit>(context);

//     return Scaffold(
//       backgroundColor: AppColor.primarybackgroundColor,
//       resizeToAvoidBottomInset: true,
//       appBar: AppBar(
//         centerTitle: false,
//         leadingWidth: 0,
//         toolbarHeight: 56,
//         elevation: 1,
//         backgroundColor: AppColor.primarybackgroundColor,
//         title: RichText(
//           text: TextSpan(
//               style: TextStyle(
//                   color: AppColor.textColor,
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'Lato'),
//               children: [
//                 const TextSpan(
//                   text: 'Sign up',
//                 ),
//                 TextSpan(
//                   text: '  ${counter.counter}/5',
//                   style: TextStyle(
//                     color: AppColor.primaryColor,
//                   ),
//                 ),
//               ]),
//         ),
//         bottom: PreferredSize(
//           preferredSize: const Size.fromHeight(400),
//           child: SizedBox(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                     children: tabIcons
//                         .asMap()
//                         .entries
//                         .map(
//                           (e) => IconTab(
//                               iconPath: e.value,
//                               color: e.key == counter.currentIconTab
//                                   ? AppColor.primaryColor
//                                   : AppColor.dividerColor),
//                         )
//                         .toList()),
//                 Expanded(
//                   child: PageView(
//                     physics: const NeverScrollableScrollPhysics(),
//                     controller: counter.controller,
//                     onPageChanged: (value) => setState(() {
//                       counter.currentIconTab = value;
//                     }),
//                     children: const [
//                       PersonalTabs(),
//                       PersonalTabs(),
//                       PersonalTabs(),
//                       // SalaryTab(),
//                       // VerificationTabs()
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       body: PageView(
//         physics: const NeverScrollableScrollPhysics(),
//         controller: counter.signupPageController,
//         children: const [
//           PersonalInfo(),
//           AccountInfo(),
//           SalaryInfo(),
//           PhoneInfo(),
//           VeriFication(),
//         ],
//       ),
//       bottomNavigationBar: SafeArea(
//         child: Padding(
//           padding:
//               const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: const [
//               // Row(
//               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //   children: [
//               //     Container(
//               //       height: 40,
//               //       width: 90,
//               //       decoration: BoxDecoration(
//               //           borderRadius: BorderRadius.circular(5),
//               //           border: Border.all(
//               //             color: AppColor.primaryColor,
//               //             width: 2,
//               //           )),
//               //       child: ElevatedButton(
//               //         onPressed: () {},
//               //         style: const ButtonStyle(
//               //           elevation: null,
//               //           backgroundColor: MaterialStatePropertyAll(
//               //               AppColor.scaffoldBackground),
//               //         ),
//               //         child: Text(
//               //           'Back',
//               //           style: TextStyle(color: AppColor.primaryColor0),
//               //         ),
//               //       ),
//               //     ),
//               //     Container(
//               //       height: 40,
//               //       width: 90,
//               //       decoration: BoxDecoration(
//               //           borderRadius: BorderRadius.circular(5),
//               //           border: Border.all(
//               //             color: AppColor.disableTextColor,
//               //             width: 2,
//               //           )),
//               //       child: ElevatedButton(
//               //         onPressed: () {
//               //           Navigator.pop(
//               //             context,
//               //           );
//               //         },
//               //         style: const ButtonStyle(
//               //           elevation: null,
//               //           backgroundColor: MaterialStatePropertyAll(
//               //               AppColor.scaffoldBackground),
//               //         ),
//               //         child: Text(
//               //           'Cancel',
//               //           style: TextStyle(color: AppColor.primaryColor),
//               //         ),
//               //       ),
//               //     ),
//               //     Container(
//               //       height: 40,
//               //       width: 90,
//               //       decoration: BoxDecoration(
//               //           borderRadius: BorderRadius.circular(5),
//               //           border: Border.all(
//               //             color: AppColor.primaryColor,
//               //             width: 2,
//               //           )),
//               //       child: ElevatedButton(
//               //         onPressed: () {},
//               //         style: const ButtonStyle(
//               //           elevation: null,
//               //           backgroundColor: MaterialStatePropertyAll(
//               //               AppColor.scaffoldBackground),
//               //         ),
//               //         child: Text(
//               //           'Next',
//               //           style: TextStyle(color: AppColor.primaryColor0),
//               //         ),
//               //       ),
//               //     ),
//               //   ],
//               // )
//               // counter.counter > 1
//               //     ? CustomButton(
//               //         onPressed: () {
//               //           counter.onPressedPrevious();
//               //         },
//               //         color: AppColor.primaryColor,
//               //         buttonName: 'Previous',
//               //         height: UI.height! * 0.06,
//               //         width: UI.width! * 0.3,
//               //       )
//               //     : CustomButton(
//               //         color: AppColor.hintTextColor,
//               //         buttonName: 'Previous ',
//               //         height: UI.height! * 0.06,
//               //         width: UI.width! * 0.3,
//               //       ),
//               // ClickableText(
//               //   onPressed: () {
//               //     counter.cancelAll(context);
//               //     counter.isEmailAvailable = true;
//               //     Navigator.pop(context);
//               //   },
//               //   name: 'Cancel',
//               //   color: AppColor.appGrey,
//               //   underline: false,
//               // ),
//               // (counter.count < 5 && counter.isEmailAvailable)
//               //     ? CustomButton(
//               //         onPressed: () {
//               //           if (counter.count == 4) {
//               //             formkeystate.signUpFormkey.currentState?.save();
//               //             final String cc = formkeystate.signUpFormkey
//               //                 .currentState?.value['country_code'];
//               //           } else {
//               //             counter.onPressedNext();
//               //           }
//               //         },
//               //         color: AppColor.primaryColor,
//               //         buttonName: 'Next',
//               //         height: 22,
//               //         width: 18,
//               //       )
//               //     : CustomButton(
//               //         color: AppColor.punchColor,
//               //         buttonName: 'Next',
//               //         height: 22,
//               //         width: 18,
//               //       ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
