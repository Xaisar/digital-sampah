import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class MyListTile extends StatelessWidget {
  final String iconImagePath;
  final String tileName;
  final String tileSubName;
  var route;

  MyListTile(
      {super.key,
      required this.iconImagePath,
      required this.tileName,
      required this.tileSubName,
      required this.route});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //icons
              Container(
                height: 60,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(iconImagePath),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tileName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    tileSubName,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // padding: EdgeInsets.all(4),
              backgroundColor: Colors.grey[200],
              shape: new CircleBorder(),
            ),
            onPressed: () => Get.toNamed(route),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          // Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
