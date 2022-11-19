import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/menu_items/desserts_menu_item.dart';
import 'package:flutter_teman_kopi/model/desserts_model.dart';

class DessertsTab extends StatelessWidget {
  const DessertsTab({super.key, required this.dessertsList});

  final List<Desserts> dessertsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dessertsList.length,
      itemBuilder: (context, int key) {
        return DessertsMenuItem(
          index: key,
          itemd: dessertsList[key],
        );
      },
    );
  }
}
