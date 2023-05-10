
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:provider/provider.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({Key? key}) : super(key: key);

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   List<String> tabIcons = [
//     StaticAssets.personIcon,
//     StaticAssets.salaryIcon,
//     StaticAssets.verificationIcon
//   ];
//   List<Widget> screens = [
//     const PersonalInfo(),
//     const AccountInfo(),
//     const SalaryInfo(),
//     const PhoneNumber(),
//     const Verification()
//   ];

//   @override
//   Widget build(BuildContext context) {
//     App.init(context);
//     final formkeystate = Provider.of<FormKeys>(context);
//     final counter = Provider.of<SignUpCounter>(context);
//     final cubit = BlocProvider.of<AppCubit>(context);

//     return Scaffold(
//       backgroundColor: AppColor.primarybackgroundColor,
//       resizeToAvoidBottomInset: true,
//       appBar: AppBar(
//         centerTitle: false,
//         leadingWidth: 0,
//         toolbarHeight: UI.height! * 0.08,
//         elevation: 1,
//         backgroundColor: AppColor.primarybackgroundColor,
//         title: RichText(
//           text: TextSpan(
//               style: TextStyle(
//                   color: AppColor.textColor,
//                   fontSize: UI.width! * FontSizes.twentyTwo,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'Lato'),
//               children: [
//                 const TextSpan(
//                   text: 'Sign up',
//                 ),
//                 TextSpan(
//                   text: '  ${counter.count}/5',
//                   style: TextStyle(
//                     color: AppColor.primaryColor,
//                   ),
//                 ),
//               ]),
//         ),
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(UI.height! * 0.12),
//           child: SizedBox(
//             height: UI.height! * 0.12,
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
//                       SalaryTab(),
//                       VerificationTabs()
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       body: FormBuilder(
//         key: formkeystate.signUpFormkey,
//         // initialValue: {
//         //   'first_name': 'Muhammad Zain',
//         //   'last_name': 'Tariq',
//         //   'ADDRESS': 'e.g: street No. 91',
//         //   'email': 'mailto:zain.tariq@sixlogics.com',
//         //   'password': 'e.g:Z@in1234',
//         //   'bank': '1234',
//         //   'Account_no': '123456789',
//         //   'phone_no': '3164926827',
//         //   'country_code':
//         //       '${formkeystate.countryCode?.code ?? "US"} (${formkeystate.countryCode?.dialCode ?? "+1"})   '
//         // },
//         child: PageView(
//           physics: const NeverScrollableScrollPhysics(),
//           controller: counter.signupPageController,
//           children: const [
//             PersonalInfo(),
//             AccountInfo(),
//             SalaryInfo(),
//             PhoneNumber(),
//             Verification()
//           ],
//         ),
//       ),
//       bottomNavigationBar: SafeArea(
//         child: Padding(
//           padding:
//               const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               counter.count > 1
//                   ? CustomButton(
//                       onPressed: () {
//                         counter.onPressedPrevious();
//                       },
//                       color: AppColor.primaryColor,
//                       buttonName: 'Previous',
//                       height: UI.height! * 0.06,
//                       width: UI.width! * 0.3,
//                     )
//                   : CustomButton(
//                       color: AppColor.hintTextColor,
//                       buttonName: 'Previous ',
//                       height: UI.height! * 0.06,
//                       width: UI.width! * 0.3,
//                     ),
//               ClickableText(
//                 onPressed: () {
//                   counter.cancelAll(context);
//                   counter.isEmailAvailable = true;
//                   Navigator.pop(context);
//                 },
//                 name: 'Cancel',
//                 color: AppColor.appGrey,
//                 underline: false,
//               ),
//               (counter.count < 5 && counter.isEmailAvailable)
//                   ? CustomButton(
//                       onPressed: () {
//                         if (counter.count == 4) {
//                           formkeystate.signUpFormkey.currentState?.save();
//                           final String cc = formkeystate.signUpFormkey
//                               .currentState?.value['country_code'];
//                           cubit.checkAvailability(
//                               param:
//                                   '${cc.substring(cc.indexOf('+'), cc.indexOf(')')).trim()}${formkeystate.signUpFormkey.currentState?.value['phone_no']}',
//                               type: 'phone');
//                         } else {
//                           counter.onPressedNext();
//                         }
//                       },
//                       color: AppColor.primaryColor,
//                       buttonName: 'Next',
//                       height: UI.height! * 0.06,
//                       width: UI.width! * 0.3,
//                     )
//                   : CustomButton(
//                       color: AppColor.hintTextColor,
//                       buttonName: 'Next',
//                       height: UI.height! * 0.06,
//                       width: UI.width! * 0.3,
//                     ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

