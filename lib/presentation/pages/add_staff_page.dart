import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddStaffPage extends StatefulWidget {
  const AddStaffPage({super.key});

  @override
  State<AddStaffPage> createState() => _AddStaffPageState();
}

class _AddStaffPageState extends State<AddStaffPage> {
  TextEditingController namaController = TextEditingController();
  TextEditingController shiftController = TextEditingController();
  TextEditingController posisiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

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
                  'Add Data Staff Teman Kopi',
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
                Navigator.pop(context);
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
              submitData();
            },
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 153, 109, 93))),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(35, 15, 35, 15),
              child: Text('Submit'),
            )),
      ]),
    );
  }

  Future<void> submitData() async {
    final nama = namaController.text;
    final posisi = posisiController.text;
    final shift = shiftController.text;
    final body = {
      "nama": nama,
      "posisi": posisi,
      "shift": shift,
    };
    const url = 'http://10.0.2.2:8080/staff/';
    final uri = Uri.parse(url);
    final response = await http.post(uri, body: jsonEncode(body));

    if (response.statusCode == 200) {
      namaController.text = '';
      posisiController.text = '';
      shiftController.text = '';
      showSuccessMessage('Data berhasil ditambahkan');
    } else {
      showErrorMessage('Data gagal ditambahkan');
    }
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
