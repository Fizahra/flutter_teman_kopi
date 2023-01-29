import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

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
                        image: AssetImage('assets/image/header4.jpg'),
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
                      text: "Hello",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 22,
                      ),
                      children: [
                        TextSpan(
                          text: "\nIt's ME :)",
                          style: TextStyle(
                            color: Colors.white,
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
              height: 550,
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
                    'About this Project',
                    style: TextStyle(
                        color: Color.fromARGB(255, 250, 178, 173),
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Halo semuanya!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 250, 178, 173),
                              fontSize: 15,
                              fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Saya Fitri Az-Zahra Ramadhini dengan NPM 20552011098 dari kelas TIF RP 20 B Sekolah Tinggi Teknologi Bandung. Seharusnya ini adalah page untuk order, tetapi saya jadikan sebagai about page karena saya masih belum bisa untuk membuat method create ordernya :(\n Tapi saya akan terus berusaha agar bisa membuat page untuk ordernya xD",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 153, 109, 93),
                            letterSpacing: 0.7,
                            wordSpacing: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Jadi, ini adalah project uts saya dari mata kuliah Mobile Programming 2. Saya membuat aplikasi cafe dengan nama Cafe Teman Kopi yang mana adalah nama cafe milik orang yang saya sayangi. Saya sangat menyukai kucing dan bermimpi untuk membuka sebuah cafe kucing suatu saat nanti. Karena itulah tercetus ide untuk membuat aplikasi cafe kucing ini yang mungkin bisa saya gunakan dimasa depan, hehe^^",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 153, 109, 93),
                            letterSpacing: 0.7,
                            wordSpacing: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Dalam pembuatannya, tentu saja sangat pusing dan juga memakan waktu yang tidak sedikit, apalagi untuk bagian search :( \n Tapi karena itulah seru, haha. Oh iya, saya membuat aplikasi ini seimut mungkin karena saya suka yang imut-imut!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 153, 109, 93),
                            letterSpacing: 0.7,
                            wordSpacing: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Yah, mungkin itu saja sih ya..saya sudah berusaha semampu saya, jadi semoga uts saya mendapat nilai yang memuaskan, Aamiin!!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 153, 109, 93),
                            letterSpacing: 0.7,
                            wordSpacing: 1.5,
                          ),
                        ),
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
