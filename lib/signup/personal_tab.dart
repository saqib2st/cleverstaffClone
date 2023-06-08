import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PersonalTabs extends StatefulWidget {
  const PersonalTabs({super.key});

  @override
  State<PersonalTabs> createState() => _PersonalTabsState();
}

class _PersonalTabsState extends State<PersonalTabs> {
  List<String> textIcon = [
    '1.Personal',
    '1.Account',
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) {
        return const Row(
          children: [
            Text("Personal view 1"),
          ],
        );
      },
    );
  }
}
