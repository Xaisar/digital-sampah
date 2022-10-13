import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String butoonText;
  final Function()? onPressed;

  const MyButton({
    super.key,
    required this.iconImagePath,
    required this.butoonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icon
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(5),
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: onPressed,
          child: Container(
            height: 60,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              // color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 30,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Center(
              child: Image.asset(iconImagePath),
            ),
          ),
        ),
        SizedBox(height: 4),
        //text
        Text(
          butoonText,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        )
      ],
    );
  }
}
