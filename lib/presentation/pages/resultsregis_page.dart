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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: height * 0.3,
                width: width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/header5.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.2),
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                  ),
                ),
              ),
              Positioned(
                bottom: 80,
                left: 40,
                child: RichText(
                  text: const TextSpan(
                      text: "Cafe Kucing",
                      style: TextStyle(
                        color: Color.fromARGB(255, 153, 109, 93),
                        fontWeight: FontWeight.w300,
                        fontSize: 22,
                      ),
                      children: [
                        TextSpan(
                          text: "\nTeman Kopi!",
                          style: TextStyle(
                            color: Color.fromARGB(255, 153, 109, 93),
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                          ),
                        )
                      ]),
                ),
              ),
              Positioned(
                left: 17,
                top: height * 0.06,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.keyboard_backspace,
                    size: 42,
                    color: Color.fromARGB(255, 153, 109, 93),
                  ),
                ),
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, -(height * 0.3 - height * 0.26)),
            child: Container(
              width: width,
              height: 530,
              padding: const EdgeInsets.only(top: 5),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Informasi Pribadimu',
                    style: TextStyle(
                        color: Color.fromARGB(255, 153, 109, 93),
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Column(
                      children: [
                        Text(
                          "Nama Lengkap : $nama",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 153, 109, 93),
                              fontSize: 15,
                              fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Email : $email",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 153, 109, 93),
                              fontSize: 15,
                              fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Tanggal Lahir : $tanggal",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 153, 109, 93),
                              fontSize: 15,
                              fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Waktu Nongkrong : $waktu",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 153, 109, 93),
                              fontSize: 15,
                              fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
