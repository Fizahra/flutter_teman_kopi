import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/menu_items/others_menu_item.dart';
import 'package:flutter_teman_kopi/model/others_model.dart';

class OthersTab extends StatelessWidget {
  const OthersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: others.length,
      itemBuilder: (context, int key) {
        return OthersMenuItem(index: key);
      },
    );
  }
}