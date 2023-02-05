import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/presentation/pages/staff_page.dart';
import 'package:http/http.dart' as http;

class EditStaffPage extends StatefulWidget {
  const EditStaffPage({super.key});

  @override
  State<EditStaffPage> createState() => _EditStaffPageState();
}

class _EditStaffPageState extends State<EditStaffPage> {
  TextEditingController namaController = TextEditingController();
  TextEditingController shiftController = TextEditingController();
  TextEditingController posisiController = TextEditingController();
  bool isEdit = false;

  @override
  Widget build(BuildContext context) {
    final staff = ModalRoute.of(context)!.settings.arguments as List<String>;
    double height = MediaQuery.of(context).size.height;
    if (staff[1].isNotEmpty) {
      namaController.text = staff[1];
    }
    if (staff[2].isNotEmpty) {
      posisiController.text = staff[2];
    }
    if (staff[3].isNotEmpty) {
      shiftController.text = staff[3];
    }
    return Scaffold(
      body: Column(children: [
        Stack(children: [
          const SizedBox(height: 190),
          Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  'Edit Data Staff Teman Kopi',
                  style: TextStyle(
                    color: Color.fromARGB(255, 153, 109, 93),
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      border: Border.all(
                          color: const Color.fromARGB(255, 153, 109, 93)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: namaController,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 153, 109, 93)),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Nama Staff',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 153, 109, 93)),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      border: Border.all(
                          color: const Color.fromARGB(255, 153, 109, 93)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: posisiController,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 153, 109, 93)),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Posisi Staff',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 153, 109, 93)),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      border: Border.all(
                          color: const Color.fromARGB(255, 153, 109, 93)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: shiftController,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 153, 109, 93)),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Shift staff (00.00-00.00)',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 153, 109, 93)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 17,
            top: height * 0.08,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const StaffPage())));
              },
              child: const Icon(Icons.keyboard_backspace,
                  size: 42, color: Color.fromARGB(255, 153, 109, 93)),
            ),
          ),
        ]),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              updateData(int.parse(staff[0]), namaController.text,
                  posisiController.text, shiftController.text);
            },
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 153, 109, 93))),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(35, 15, 35, 15),
              child: Text('Update'),
            )),
      ]),
    );
  }

  Future<void> updateData(
      int id, String nama, String posisi, String shift) async {
    final url = 'http://10.0.2.2:8080/staff/$id';
    final uri = Uri.parse(url);
    try {
      final body = {
        "nama": nama,
        "posisi": posisi,
        "shift": shift,
      };
      final response = await http.put(uri, body: jsonEncode(body));
      if (response.statusCode == 201) {
        showSuccessMessage('Data berhasil diubah');
      } else {
        showErrorMessage('Data gagal diubah');
      }
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
    // final id = staff['id'];
    // final nama = namaController.text;
    // final posisi = posisiController.text;
    // final shift = shiftController.text;
    //
    // final url = 'http://10.0.2.2:8080/staff/$id';
    // final uri = Uri.parse(url);
    // final response = await http.put(uri, body: jsonEncode(body));

    // if (response.statusCode == 200) {
    //   showSuccessMessage('Data berhasil diubah');
    // } else {
    //   showErrorMessage('Data gagal diubah');
    // }
  }

  void showSuccessMessage(String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void showErrorMessage(String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.red,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
