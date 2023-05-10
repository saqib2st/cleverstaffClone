// import 'package:clevestaff/Provider/Sign_up_todos_provider.dart';
// import 'package:clevestaff/signup/tab_account.dart';
// import 'package:clevestaff/signup/tab_personal.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../config/apptheme.dart';

// class TabBar1 extends StatefulWidget {
//   const TabBar1({Key? key}) : super(key: key);

//   @override
//   State<TabBar1> createState() => _TabBar1State();
// }

// class _TabBar1State extends State<TabBar1> {
//   final List<String> _tabICons = [
//     '1.Personal',
//     '2.Account',
//   ];

//   final List<Widget> _tabView = [
//     const PersonalInfo(),
//     const AccountInfo(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final selectedIndex = Provider.of<SignUpProvider>(context, listen: false);

//     return Consumer<SignUpProvider>(builder: (context, value, child) {
//       return Scaffold(
//         body: Column(children: [
//           Material(
//             elevation: 3,
//             child: Row(
//               children: List.generate(_tabICons.length, (index) {
//                 return Expanded(
//                   child: GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedIndex
//                             .incrementCounter(selectedIndex.counter + 1);
//                       });
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: AppColor.scaffoldBackground,
//                           border: BorderDirectional(
//                               bottom: BorderSide(
//                                   color: selectedIndex.counter == index
//                                       ? Colors.blue
//                                       : AppColor.scaffoldBackground,
//                                   width: 2))),
//                       padding: const EdgeInsets.symmetric(vertical: 10.0),
//                       child: Center(
//                           child: Text(
//                         _tabICons[index],
//                         style: TextStyle(
//                             color: selectedIndex.counter == index
//                                 ? AppColor.primaryColor
//                                 : AppColor.appGrey),
//                       )),
//                     ),
//                   ),
//                 );
//               }),
//             ),
//           ),
//           Expanded(
//             child: IndexedStack(
//               index: selectedIndex.counter,
//               children: _tabView,
//             ),
//           ),
//         ]),
//       );
//     });
//   }
// }
