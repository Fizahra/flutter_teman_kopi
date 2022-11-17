import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/menu_items/drinks_menu_item.dart';
import 'package:flutter_teman_kopi/model/drinks_model.dart';

class DrinksTab extends StatelessWidget {
  const DrinksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: drinks.length,
      itemBuilder: (context, int key) {
        return DrinksMenuItem(index: key);
      },
    );
  }
}
