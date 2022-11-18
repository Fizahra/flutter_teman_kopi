import 'package:flutter/material.dart';

class RulesPage extends StatelessWidget {
  const RulesPage({super.key});

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
                        image: AssetImage('assets/image/header3.jpg'),
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
                left: 197,
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
              )
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, -(height * 0.3 - height * 0.26)),
            child: Container(
              width: width,
              height: 515,
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
                    'Rules Cafe',
                    style: TextStyle(
                        color: Color.fromARGB(255, 153, 109, 93),
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Column(
                      children: [
                        const Text(
                          "Aturan ini wajib diikuti demi kenyaman kucing dan juga dirimu",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 153, 109, 93),
                              fontSize: 15,
                              fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "1. Bukalah alas kaki pada tempat yang telah disediakan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 153, 109, 93),
                            letterSpacing: 0.5,
                            wordSpacing: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "2. Jangan mengganggu kucing yang tertidur",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 153, 109, 93),
                            letterSpacing: 0.5,
                            wordSpacing: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "3. Jangan menarik ekor dan kuping kucing",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 153, 109, 93),
                            letterSpacing: 0.5,
                            wordSpacing: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "4. Pelankan suara agar tidak mengganggu kucing dan pengunjung lain",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 153, 109, 93),
                            letterSpacing: 0.5,
                            wordSpacing: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "5. Jangan memberi makan kucing. Kucing yang aktif bisa naik ke meja",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 153, 109, 93),
                            letterSpacing: 0.5,
                            wordSpacing: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "6. Jangan lupa ke bagian pembersih sebelum pulang agar bajumu dibersihkan dari bulu-bulu kucing",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 153, 109, 93),
                            letterSpacing: 0.5,
                            wordSpacing: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "7. Jika ingin fotomu dimasukkan ke dalam gallery kami, jangan lupa untuk mempostingnya dengan mengtag akun sosmed kami",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 153, 109, 93),
                            letterSpacing: 0.5,
                            wordSpacing: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Selamat bersenang-senang di cafe kami!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 153, 109, 93),
                              fontSize: 15,
                              fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Ikuti kami di sosmed:",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 153, 109, 93),
                              fontSize: 15,
                              fontWeight: FontWeight.w900),
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 153, 109, 93)),
                              child: Image.asset(
                                'assets/image/ig.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 153, 109, 93)),
                              child: Image.asset(
                                'assets/image/fb.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 153, 109, 93)),
                              child: Image.asset(
                                'assets/image/tt.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 153, 109, 93)),
                              child: Image.asset(
                                'assets/image/tw.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
