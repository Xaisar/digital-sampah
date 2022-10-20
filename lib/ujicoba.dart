import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ujicoba extends StatelessWidget {
  final List<Map<String, dynamic>> listcoba = [
    {'angka': ""}
  ].obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: AppBar(title: Text('Ini Uji Coba')),
        body: Stack(children: [
          ListView.builder(
              itemCount: listcoba.length,
              itemBuilder: (context, index) {
                return isiList(index);
              }),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  print(listcoba);
                },
                color: Colors.blue,
                child: Text('print'),
              )
            ],
          )
        ]),
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
    return Container(
        width: 250.0,
        margin: EdgeInsets.all(10),
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
        ));
    // return Container(
    //     alignment: Alignment.center,
    //     margin: EdgeInsets.only(top: 10, left: 10, right: 10),
    //     color: Colors.blue[200],
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         TextField(
    //           onSubmitted: (isi) {
    //             var i = isi;
    //             listcoba[index]['angka'] = i;
    //           },
    //           decoration: InputDecoration(
    //             // border: OutlineInputBorder(
    //             //     borderRadius: BorderRadius.all(Radius.circular(10))
    //             //     ),
    //             hintText: 'Input Username',
    //             focusColor: Colors.white,
    //           ),
    //         ),
    //       ],
    //     ));
  }
}
