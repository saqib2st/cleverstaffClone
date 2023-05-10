// import 'package:flutter/material.dart';

// import '../config/apptheme.dart';

// class TabBar2 extends StatefulWidget {
//   const TabBar2({super.key});

//   @override
//   State<TabBar2> createState() => _TabBar2State();
// }

// class _TabBar2State extends State<TabBar2> {
//   int _selectedIndex = 0;
//   final List<String> _tabICons = [
//     '1.Salary',
//   ];

//   final List<Widget> _tabView = [const SalaryInfo()];

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

