import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/tabs/desserts_tab.dart';
import 'package:flutter_teman_kopi/tabs/drinks_tab.dart';
import 'package:flutter_teman_kopi/tabs/others_tab.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: height * 0.34,
                  width: width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image/header.jpg'),
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
                  bottom: 130,
                  left: 20,
                  child: RichText(
                    text: const TextSpan(
                        text: "Get your coffee",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                            text: "\nwith a cute cat!",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
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
                    length: 3,
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          TabBar(
                            labelColor: Colors.black,
                            labelStyle: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                            unselectedLabelColor: Colors.grey[400],
                            unselectedLabelStyle: const TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 17),
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: Colors.transparent,
                            tabs: const <Widget>[
                              Tab(
                                child: Text('Minuman'),
                              ),
                              Tab(
                                child: Text('Camilan'),
                              ),
                              Tab(
                                child: Text('Lainnya'),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 10),
                            child: TextField(
                                decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    prefixIcon: const Padding(
                                      padding: EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Icon(
                                        Icons.search,
                                        size: 30,
                                      ),
                                    ),
                                    hintText:
                                        "Cari kopi, camilan atau yang lain disini",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 1.0)))),
                          ),
                          // ignore: sized_box_for_whitespace
                          Container(
                            height: height * 0.6,
                            child: const TabBarView(
                              children: [
                                DrinksTab(),
                                DessertsTab(),
                                OthersTab(),
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
      ),
    );
  }
}
