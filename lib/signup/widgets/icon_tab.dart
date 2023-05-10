import 'package:clevestaff/config/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconTab extends StatefulWidget {
  final Color color;
  final String iconPath;
  const IconTab({Key? key, required this.color, required this.iconPath})
      : super(key: key);

  @override
  State<IconTab> createState() => _IconTabState();
}

class _IconTabState extends State<IconTab> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            border: BorderDirectional(
                bottom: BorderSide(
                    color: widget.color == AppColor.dividerColor
                        ? AppColor.primarybackgroundColor
                        : widget.color,
                    width: 2))),
        child: Center(
            child: SvgPicture.asset(
          widget.iconPath,
          color: widget.color,
        )),
      ),
    );
  }
}
