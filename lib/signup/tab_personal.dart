import 'package:flutter/material.dart';

import '../config/apptheme.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo>
    with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            'Personal Information',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColor.tabColor),
          ),
          const Text('Enter some Information about yourself'),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 5,
            color: AppColor.dividerColor,
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColor.appGrey, width: 2.0),
                    ),
                    hintText: 'e.g. Jhon',
                  ),
                ),
              ),
              const SizedBox(
                  width: 40), // add some space between the text fields
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColor.appGrey, width: 2.0),
                    ),
                    hintText: 'e.g. Doe',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Frist Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 38,
              ),
              Expanded(
                child: Text(
                  'Last Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          TextField(
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColor.appGrey, width: 2.0),
                ),
                hintText: 'e.g. SomeStreet91'),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Address',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 220),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: AppColor.disableTextColor,
                        width: 2,
                      )),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    style: const ButtonStyle(
                      elevation: null,
                      backgroundColor:
                          MaterialStatePropertyAll(AppColor.scaffoldBackground),
                    ),
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: AppColor.primaryColor),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: AppColor.primaryColor,
                        width: 2,
                      )),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      elevation: null,
                      backgroundColor:
                          MaterialStatePropertyAll(AppColor.scaffoldBackground),
                    ),
                    child: Text(
                      'Next',
                      style: TextStyle(color: AppColor.primaryColor0),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
