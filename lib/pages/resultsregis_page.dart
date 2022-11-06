import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultRegistPage extends StatelessWidget {
  ResultRegistPage({
    super.key,
    required this.nama,
    required this.email,
    required this.tanggal,
    required this.waktu,
  });

  String nama, email, tanggal, waktu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.person,
              size: 80,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Informasi Pribadi Milikmu',
              style: TextStyle(
                  color: Color.fromARGB(255, 153, 109, 93),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            const SizedBox(
              height: 20,
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Nama Lengkap : $nama',
                style: const TextStyle(
                    color: Color.fromARGB(255, 153, 109, 93), fontSize: 13),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Email : $email',
                style: const TextStyle(
                    color: Color.fromARGB(255, 153, 109, 93), fontSize: 13),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Tanggal Lahir : $tanggal',
                style: const TextStyle(
                    color: Color.fromARGB(255, 153, 109, 93), fontSize: 13),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Waktu Nongkrong : $waktu',
                style: const TextStyle(
                    color: Color.fromARGB(255, 153, 109, 93), fontSize: 13),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              // ignore: sort_child_properties_last
              child: const Text(
                'Kembali',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                Color.fromARGB(255, 153, 109, 93),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
