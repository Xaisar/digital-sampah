import 'package:digital_sampah/colors.dart';
import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final double? fontSize;
  final IconData icon;
  final Function()? onTap;
  final Color? backGroundColor;
  final Color? iconColor;
  final Color? textColor;
  final String? text;
  const AppButtons({
    Key? key,
    this.fontSize = 20,
    required this.icon,
    this.onTap,
    this.backGroundColor = AppColor.maingreen,
    this.iconColor = Colors.white,
    this.textColor = AppColor.mainColor,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          // SizedBox(height: 10),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: backGroundColor,
            ),
            child: Icon(
              icon,
              size: 30,
              color: iconColor,
            ),
          ),
          text != null
              ? Text(
                  text!,
                  style: TextStyle(
                    fontSize: 12,
                    color: textColor,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
