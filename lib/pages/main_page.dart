import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/pages/cat_page.dart';
import 'package:flutter_teman_kopi/pages/menu_page.dart';
import 'package:flutter_teman_kopi/pages/order_page.dart';
import 'package:flutter_teman_kopi/pages/register_page.dart';
import 'package:flutter_teman_kopi/pages/rules_page_.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) => setState(() => _currentIndex = index),
          children: const [
            RegisterPage(),
            RulesPage(),
            MenuPage(),
            CatPage(),
            OrderPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: false,
        itemCornerRadius: 5,
        curve: Curves.easeIn,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(_currentIndex);
        },
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Register'),
            activeColor: const Color.fromARGB(255, 153, 109, 93),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.list_alt),
            title: const Text('Rules'),
            activeColor: const Color.fromARGB(255, 153, 109, 93),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.coffee),
            title: const Text('Menu'),
            activeColor: const Color.fromARGB(255, 153, 109, 93),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.pets),
            title: const Text('Our Cats'),
            activeColor: const Color.fromARGB(255, 153, 109, 93),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.shopping_cart),
            title: const Text('Order'),
            activeColor: const Color.fromARGB(255, 153, 109, 93),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
