import 'package:flutter/material.dart';

class RulesPage extends StatelessWidget {
  const RulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Icon(
              Icons.pets,
              size: 80,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Peraturan Cafe Teman Kopi',
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
              child: const Text(
                '1. Bukalah alas kaki pada tempat yang telah disediakan',
                style: TextStyle(
                    color: Color.fromARGB(255, 153, 109, 93), fontSize: 13),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                '2. Jangan mengganggu kucing yang tertidur',
                style: TextStyle(
                    color: Color.fromARGB(255, 153, 109, 93), fontSize: 13),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '3. Jangan menarik ekor dan kuping kucing',
                style: TextStyle(
                    color: Color.fromARGB(255, 153, 109, 93), fontSize: 13),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '4. Pelankan suara agar tidak mengganggu kucing dan pengunjung lain',
                style: TextStyle(
                    color: Color.fromARGB(255, 153, 109, 93), fontSize: 13),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '5. Jangan memberi makan kucing. Kucing yang aktif bisa naik ke meja',
                style: TextStyle(
                    color: Color.fromARGB(255, 153, 109, 93), fontSize: 13),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Selamat menikmati secangkir kopimu dengan ditemani kucing yang menggemaskan',
              style: TextStyle(
                  color: Color.fromARGB(255, 153, 109, 93),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
