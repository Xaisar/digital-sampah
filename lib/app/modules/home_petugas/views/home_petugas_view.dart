import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_petugas_controller.dart';

class HomePetugasView extends GetView<HomePetugasController> {
  const HomePetugasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/backgroundRegister.png',
            fit: BoxFit.fill,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Text(
                    //   "Hallo Praya!",
                    //   style: TextStyle(
                    //     fontSize: 30,
                    //     color: Colors.white,
                    //     fontWeight: FontWeight.normal,
                    //   ),
                    // ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/avatar.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Menu Petugas",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Wrap(
                      spacing: 20.0,
                      runSpacing: 20.0,
                      children: [
                        SizedBox(
                          width: 160.0,
                          height: 160.0,
                          child: Card(
                            color: Color(0xff1DBA3F),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    // Image.asset("*"), gambar width: 64.0
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text("data",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 160.0,
                          height: 160.0,
                          child: Card(
                            color: Color(0xff1DBA3F),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    // Image.asset("*"), gambar width: 64.0
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text("data",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 160.0,
                          height: 160.0,
                          child: Card(
                            color: Color(0xff1DBA3F),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    // Image.asset("*"), gambar width: 64.0
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text("data",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 160.0,
                          height: 160.0,
                          child: Card(
                            color: Color(0xff1DBA3F),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    // Image.asset("*"), gambar width: 64.0
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text("data",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 160.0,
                          height: 160.0,
                          child: Card(
                            color: Color(0xff1DBA3F),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    // Image.asset("*"), gambar width: 64.0
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text("data",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 160.0,
                          height: 160.0,
                          child: Card(
                            color: Color(0xff1DBA3F),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    // Image.asset("*"), gambar width: 64.0
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text("data",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ],
      )),
    );
  }
}

 // children: <Widget>[
            //   Container(
            //     height: 100,
            //     padding: EdgeInsets.only(right: 15.0, top: 30.0, left: 15),
            //     child: Column(
            //       children: [
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: <Widget>[
            //             Text(
            //               "Hallo Praya!",
            //               style: TextStyle(
            //                 fontSize: 30,
            //                 color: Colors.white,
            //                 fontWeight: FontWeight.w500,
            //               ),
            //             ),
            //             CircleAvatar(
            //               backgroundImage:
            //                   AssetImage('assets/images/avatar.png'),
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            //   Row(
            //     children: [
            //       SizedBox(
            //         width: 160.0,
            //         height: 160.0,
            //         child: Card(
            //           color: Color(0xff1DBA3F),
            //           elevation: 2.0,
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.0),
            //           ),
            //           child: Center(
            //               child: Padding(padding: const EdgeInsets.all(8.0)),
            //               child),
            //         ),
            //       )
            //     ],
            //   ),
            // ],