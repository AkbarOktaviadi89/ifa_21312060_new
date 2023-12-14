import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ifa_21312060/app/modules/karyawan/controllers/karyawan_controller.dart';

class KaryawanAddView extends GetView<KaryawanController> {
  const KaryawanAddView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Karyawan'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: controller.cNo_karyawan,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "No karyawan"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cNama_karyawan,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(labelText: "Nama karyawan"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cJabatan_karyawan,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(labelText: "Jabatan Karyawan"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => controller.add(
                controller.cNo_karyawan.text,
                controller.cNama_karyawan.text,
                controller.cJabatan_karyawan.text
              ),
              child: Text("Simpan"),
            )
          ],
        ),
      ),
    );
  }
}
