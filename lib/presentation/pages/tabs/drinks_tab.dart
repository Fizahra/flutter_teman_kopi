import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/presentation/items/menu_items/drinks_menu_item.dart';
import 'package:flutter_teman_kopi/data/data_sources/local/model/drinks_model.dart';

class DrinksTab extends StatelessWidget {
  const DrinksTab({super.key, required this.drinksList});

  final List<Drinks> drinksList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: drinksList.length,
      itemBuilder: (context, int key) {
        return DrinksMenuItem(
          index: key,
          item: drinksList[key],
        );
      },
    );
  }
}
