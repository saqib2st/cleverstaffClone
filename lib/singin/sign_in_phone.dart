import 'package:clevestaff/config/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignInManagerWithPhone extends StatefulWidget {
  const SignInManagerWithPhone({super.key});

  @override
  State<SignInManagerWithPhone> createState() => _SignInManagerWithPhoneState();
}

class _SignInManagerWithPhoneState extends State<SignInManagerWithPhone> {
  TextEditingController countryCode = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    countryCode.text = 'PK(+91)';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text.rich(
                  TextSpan(children: [
                    const TextSpan(
                      text: 'Sign In ',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text: 'With Phone',
                        style: TextStyle(
                          fontSize: 22,
                          color: AppColor.appDarkGrey,
                        ))
                  ]),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextField(
                          controller: countryCode,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColor.appGrey, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColor.appGrey, width: 2.0),
                            ),
                            hintText: 'eg. 12 23 45 54'),
                      )),
                    ],
                  ),
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Country Code',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      'Phone Number',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 47,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Text.rich(
                  TextSpan(children: [
                    const TextSpan(
                      text: 'Don\'t have an account? ',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    TextSpan(
                      text: 'sign up',
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context,
                              '/signup1'); // replace '/signup' with your desired route name
                        },
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
