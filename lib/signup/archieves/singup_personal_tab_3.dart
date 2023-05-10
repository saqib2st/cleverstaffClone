// import 'package:clevestaff/signup/tab_phone_no.dart';
// import 'package:clevestaff/signup/tab_verification.dart';
// import 'package:flutter/material.dart';

// import '../config/apptheme.dart';

// class TabBar3 extends StatefulWidget {
//   const TabBar3({super.key});

//   @override
//   State<TabBar3> createState() => _TabBar3State();
// }

// class _TabBar3State extends State<TabBar3> {
//   int _selectedIndex = 0;
//   final List<String> _tabICons = [
//     '4.Phone Number',
//     '5.Verification',
//   ];

//   final List<Widget> _tabView = [const PhoneInfo(), const VeriFication()];

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(children: [
//         Material(
//           elevation: 3,
//           child: Row(
//             children: List.generate(_tabICons.length, (index) {
//               return Expanded(
//                 child: GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       _selectedIndex = index;
//                     });
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: AppColor.scaffoldBackground,
//                         border: BorderDirectional(
//                             bottom: BorderSide(
//                                 color: _selectedIndex == index
//                                     ? Colors.blue
//                                     : AppColor.scaffoldBackground,
//                                 width: 2))),
//                     padding: const EdgeInsets.symmetric(vertical: 10.0),
//                     child: Center(
//                         child: Text(
//                       _tabICons[index],
//                       style: TextStyle(
//                           color: _selectedIndex == index
//                               ? AppColor.primaryColor
//                               : AppColor.appGrey),
//                     )),
//                   ),
//                 ),
//               );
//             }),
//           ),
//         ),
//         Expanded(
//           child: IndexedStack(
//             index: _selectedIndex,
//             children: _tabView,
//           ),
//         ),
//       ]),
//     );
//   }
// }
