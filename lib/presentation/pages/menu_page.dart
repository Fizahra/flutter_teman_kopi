import 'package:flutter_teman_kopi/data/data_sources/local/model/desserts_model.dart';
import 'package:flutter_teman_kopi/data/data_sources/local/model/drinks_model.dart';
import 'package:flutter_teman_kopi/data/data_sources/local/model/others_model.dart';

import 'package:flutter/material.dart';

import '../widget/search_widget.dart';
import 'tabs/desserts_tab.dart';
import 'tabs/drinks_tab.dart';
import 'tabs/others_tab.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  late List<Drinks> sdrink;
  late List<Desserts> sdessert;
  late List<Others> mother;
  String query = '';

  @override
  void initState() {
    super.initState();
    sdrink = drinks;
    sdessert = desserts;
    mother = others;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;

    void searchm(String query) {
      final sdrink = drinks.where((drinn) {
        final titleLower = drinn.nama.toLowerCase();
        final searchLower = query.toLowerCase();

        return titleLower.contains(searchLower);
      }).toList();

      final sdessert = desserts.where((des) {
        final titleLower = des.nama.toLowerCase();
        final searchLower = query.toLowerCase();

        return titleLower.contains(searchLower);
      }).toList();

      final mother = others.where((oth) {
        final titleLower = oth.nama.toLowerCase();
        final searchLower = query.toLowerCase();

        return titleLower.contains(searchLower);
      }).toList();

      setState(() {
        this.query = query;
        this.sdrink = sdrink;
        this.sdessert = sdessert;
        this.mother = mother;
      });
    }

    Widget buildSearch() => SearchWidget(
        hintText: "Cari Kopi, Camilan atau lainnya",
        onChanged: searchm,
        text: query);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                        buildSearch(),
                        // ignore: sized_box_for_whitespace
                        Container(
                          height: height * 0.6,
                          child: TabBarView(
                            children: [
                              DrinksTab(
                                drinksList: sdrink,
                              ),
                              DessertsTab(
                                dessertsList: sdessert,
                              ),
                              OthersTab(
                                othersList: mother,
                              ),
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
