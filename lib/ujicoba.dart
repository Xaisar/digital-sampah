import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ujicoba extends StatelessWidget {
  final List<Map<String, dynamic>> listcoba = [
    {'angka': ""}
  ].obs;
  final List<Map<String, dynamic>> listnama = [
    {'Nama': "Paijo", 'Id': "1"},
    {'Nama': "Paijo1", 'Id': "2"},
    {'Nama': "Paijo2", 'Id': "3"},
    {'Nama': "Paijo3", 'Id': "4"},
    {'Nama': "Paijo4", 'Id': "5"}
  ];
  static String nama = "";
  List<String> apel = ["siapa", "nama", "kenapa"];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: AppBar(title: Text('Ini Uji Coba')),
        body: ListView.builder(
            itemCount: listcoba.length,
            itemBuilder: (context, index) {
              return Container(
                  width: Get.width * 0.5,
                  margin: EdgeInsets.all(10),
                  child: isiList(index));
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // var count = num.parse(listcoba[listcoba.length - 1]['angka']);
            var i = {'angka': ""};
            listcoba.add(i);
            print(listcoba);
          },
          backgroundColor: Colors.green,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        )));
  }

  isiList(index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
          child: DropdownButton(
              items: ["30", "50", "60"].map((e) {
                return DropdownMenuItem(value: e, child: Text(e));
              }).toList(),
              onChanged: (isi) {
                nama = isi.toString();
              }),
        ),
        Flexible(
          child: TextField(
            keyboardType: TextInputType.number,
            onChanged: (isi) {
              var i = isi;
              listcoba[index]['angka'] = i;
            },
            decoration: InputDecoration(
                suffixIcon: GestureDetector(
                    onTap: () {
                      print(listcoba[index]['angka']);
                    },
                    child: Icon(
                      Icons.print,
                      color: Colors.blue,
                    ))),
          ),
        ),
      ],
    );
  }
}
