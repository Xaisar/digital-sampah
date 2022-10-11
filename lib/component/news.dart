import 'package:digital_sampah/theme.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget {
  final String IconImagePath;
  final String Judul;
  final String TitleText;

  const News({super.key,
  required this.IconImagePath,
  required this.Judul,
  required this.TitleText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding:
                        const EdgeInsets.only(bottom: 24, left: 16, right: 16),
                    child: Column(
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: dark4)),
                          child: Column(
                            children: [
                              Image.asset(IconImagePath), //"assets/images/1.png"
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  // mainAxisAlignment :MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Judul,
                                      style: bold16.copyWith(color: dark1),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      TitleText,
                                      style: regular14.copyWith(color: dark2),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
  }
}