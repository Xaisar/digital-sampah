import 'package:digital_sampah/app/modules/Pengambilan/views/detail_pengambilan_view.dart';
import 'package:digital_sampah/app/modules/riwayatPengambilan/views/detail_riwayat_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class FormPengambilanView extends GetView {
  List<Map<String, dynamic>> daftarSampah = [
    {"id": '1', "Nama": "Plastik", "Satuan": "Kg", "Harga": "2.000"},
    {"id": '2', "Nama": "Kertas", "Satuan": "Kg", "Harga": "2.500"},
    {"id": '3', "Nama": "Kaleng", "Satuan": "Kg", "Harga": "3.000"},
  ];
  List<Map<String, dynamic>> nasabah = [
    {'Id': "1", 'NoNasabah': '7654726', 'Nama': "Nada Celia Sinka Ines"},
    {'Id': "2", 'NoNasabah': '8654632', 'Nama': "Rizal Andriansyah"},
  ];
  List<Map<String, dynamic>> daftarPengambilanSampah = [
    {'Id': "", 'Nama': "", 'Berat': 0, 'satuan': ""}
  ].obs;

  List<int> listidnasabah = [
    0,
    1,
  ];
  List<int> listidsampah = [0, 1, 2];

  RxString nama = "".obs;
  RxString id = "".obs;
  RxInt total = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          bottomOpacity: 0,
          toolbarOpacity: 1,
          title: Text("Form Pengambilan"),
          backgroundColor: Color(0xFF1AD443),
          centerTitle: true,
        ),
        body: Stack(fit: StackFit.loose, children: [
          Obx(() => Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.topCenter,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Nasabah
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Stack(fit: StackFit.loose, children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 1.5,
                            decoration: BoxDecoration(color: Colors.black),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              " Nasabah ",
                              style: TextStyle(
                                  backgroundColor: Colors.white,
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: dropDownNama()),
                            ]),
                      ),
                      //List Pengambilan
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 15),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(fit: StackFit.loose, children: [
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  height: 1.5,
                                  width: Get.width * 0.95,
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  alignment: Alignment.center,
                                  child: Text(
                                    " List Pengambilan ",
                                    style: TextStyle(
                                        backgroundColor: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ]),
                            ]),
                      ),
                      Flexible(
                          fit: FlexFit.tight,
                          child: ListView.builder(
                              itemCount: daftarPengambilanSampah.length,
                              itemBuilder: (context, index) {
                                return listItem(context, index);
                              })),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: Get.width,
                        height: 50.0,
                      ),
                    ]),
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [tombolNext()],
          ),
        ]));
  }

  dropDownNama() {
    return SizedBox(
      height: 55,
      child: DropdownButtonFormField(
        hint: Text(
          'Pilih Nasabah',
          style: TextStyle(fontSize: 13),
        ),
        elevation: 10,
        items: listidnasabah.map((e) {
          return DropdownMenuItem(
              child: Text(
                nasabah[e]['Nama'],
                style: TextStyle(fontSize: 13),
              ),
              value: nasabah[e]['Id']);
        }).toList(),
        onChanged: (val) {
          id.value = val.toString();
        },
        decoration: InputDecoration(
            label: Text(
              "Nama Nasabah",
              style: TextStyle(fontSize: 16),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        icon: Icon(
          Icons.arrow_drop_down_outlined,
          color: Colors.blue,
        ),
      ),
    );
  }

  listItem(context, index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.green)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.zero,
                child: SizedBox(
                    height: 55,
                    child: DropdownButtonFormField(
                      hint: Text(
                        'Pilih Jenis Sampah',
                        style: TextStyle(fontSize: 13),
                      ),
                      elevation: 10,
                      items: listidsampah.map((e) {
                        return DropdownMenuItem(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  daftarSampah[e]['Nama'] + " ",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  daftarSampah[e]['Harga'] +
                                      " /" +
                                      daftarSampah[e]["Satuan"],
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontStyle: FontStyle.italic),
                                ),
                              ],
                            ),
                            value: daftarSampah[e]['id']);
                      }).toList(),
                      onChanged: (val) {
                        id.value = val.toString();
                        // print(id.value);
                      },
                      decoration: InputDecoration(
                          label: Text("Jenis Sampah",
                              style: TextStyle(fontSize: 16)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      icon: Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.blue,
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 2,
                      child: SizedBox(
                        height: 55,
                        width: Get.width * 0.65,
                        child: TextField(
                          style: TextStyle(fontSize: 18),
                          keyboardType: TextInputType.number,
                          // onChange: (username) {
                          //   accountC.verify.value?
                          // },
                          decoration: InputDecoration(
                            labelText: "Berat Sampah",
                            labelStyle: TextStyle(fontSize: 13),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: 'Input Berat Sampah',
                            hintStyle: TextStyle(fontSize: 13),
                            focusColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 1,
                        child: SizedBox(
                          height: 50,
                          width: Get.width * 0.25,
                          child: ElevatedButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.red),
                            onPressed: () {
                              daftarPengambilanSampah.removeAt(index);
                            },
                            child: const Text(
                              'Hapus',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
        (index + 1 == daftarPengambilanSampah.length
            ? Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: Get.width * 0.95,
                  height: 40,
                  child: ElevatedButton(
                    style:
                        TextButton.styleFrom(backgroundColor: Colors.blue[500]),
                    onPressed: () {
                      var i = {'Id': "", 'Nama': "", 'Berat': ""};
                      daftarPengambilanSampah.add(i);
                    },
                    child: const Text(
                      'Tambah',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              )
            : SizedBox())
      ],
    );
  }

  tombolNext() {
    return SizedBox(
      width: Get.width,
      height: 50.0,
      child: ElevatedButton(
          style: TextButton.styleFrom(
              backgroundColor: Color(0xFF1AD443),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
          onPressed: () {
            Get.to(DetailPengambilanView());
          },
          child: Text(
            "Next",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          )),
    );
  }
}
