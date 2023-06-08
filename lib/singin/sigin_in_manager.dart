import 'package:clevestaff/singin/Sign_in_mail.dart';
import 'package:clevestaff/singin/sign_in_phone.dart';
import 'package:flutter/material.dart';
import '../config/apptheme.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInManagerScreen extends StatefulWidget {
  const SignInManagerScreen({Key? key}) : super(key: key);

  @override
  State<SignInManagerScreen> createState() => _SignInManagerScreenState();
}

class _SignInManagerScreenState extends State<SignInManagerScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primarybackgroundColor,
        toolbarHeight: 250,
        title: const Center(
          child: Column(
            children: [
              Image(image: AssetImage('assets/images/Group 11.png')),
            ],
          ),
        ),
        bottom: TabBar(
          tabs: const [
            Tab(
              text: 'Phone',
            ),
            Tab(
              text: 'Email',
            ),
          ],
          controller: _tabController,
          unselectedLabelColor: AppColor.appGrey,
          unselectedLabelStyle:
              const TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
          labelColor: Colors.blue,
          labelStyle:
              GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          SignInManagerWithPhone(),
          SignInManagerWithMail(),
        ],
      ),
    );
  }
}
