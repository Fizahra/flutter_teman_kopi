import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/tabs/indoor_gallery.dart';
import 'package:flutter_teman_kopi/tabs/outdoor_gallery.dart';

class CatPage extends StatefulWidget {
  const CatPage({super.key});

  @override
  State<CatPage> createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
  final List<Image> myCat = [
    const Image(
      image: AssetImage('assets/image/Cat1.jpg'),
      fit: BoxFit.cover,
    ),
    const Image(
      image: AssetImage('assets/image/Cat2.jpg'),
      fit: BoxFit.cover,
    ),
    const Image(
      image: AssetImage('assets/image/Cat3.jpg'),
      fit: BoxFit.cover,
    ),
    const Image(
      image: AssetImage('assets/image/Cat4.jpg'),
      fit: BoxFit.cover,
    ),
    const Image(
      image: AssetImage('assets/image/Cat5.jpg'),
      fit: BoxFit.cover,
    ),
    const Image(
      image: AssetImage('assets/image/Cat6.jpg'),
      fit: BoxFit.cover,
    ),
    const Image(
      image: AssetImage('assets/image/Cat7.jpg'),
      fit: BoxFit.cover,
    ),
    const Image(
      image: AssetImage('assets/image/Cat8.jpg'),
      fit: BoxFit.cover,
    ),
    const Image(
      image: AssetImage('assets/image/Cat9.jpg'),
      fit: BoxFit.cover,
    ),
    const Image(
      image: AssetImage('assets/image/Cat10.jpg'),
      fit: BoxFit.cover,
    ),
    const Image(
      image: AssetImage('assets/image/Cat11.jpg'),
      fit: BoxFit.cover,
    ),
    const Image(
      image: AssetImage('assets/image/Cat12.jpg'),
      fit: BoxFit.cover,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: height * 0.3,
                width: width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/header2.jpg'),
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
                      text: "Ayo lihat Galeri",
                      style: TextStyle(
                        color: Color.fromARGB(255, 153, 109, 93),
                        fontWeight: FontWeight.w300,
                        fontSize: 22,
                      ),
                      children: [
                        TextSpan(
                          text: "\nKucing Teman Kopi!",
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
              height: 570,
              padding: const EdgeInsets.only(top: 5),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: DefaultTabController(
                  length: 2,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        TabBar(
                          labelColor: const Color.fromARGB(255, 153, 109, 93),
                          labelStyle: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                          unselectedLabelColor: Colors.grey[400],
                          unselectedLabelStyle: const TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 17),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.transparent,
                          tabs: const <Widget>[
                            Tab(
                              child: Text('Indoor Photo'),
                            ),
                            Tab(
                              child: Text('Outdoor Photo'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        // ignore: sized_box_for_whitespace
                        Container(
                          height: height * 0.6,
                          child: const TabBarView(
                            children: [
                              IndoorGallery(),
                              OutdoorGallery(),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          )
        ]),
      ),
    );
  }
}
