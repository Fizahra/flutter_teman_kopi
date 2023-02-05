import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/presentation/items/menu_items/others_menu_item.dart';
import 'package:flutter_teman_kopi/data/data_sources/local/model/others_model.dart';

class OthersTab extends StatelessWidget {
  const OthersTab({super.key, required this.othersList});

  final List<Others> othersList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: othersList.length,
      itemBuilder: (context, int key) {
        return OthersMenuItem(
          index: key,
          itemo: othersList[key],
        );
      },
    );
  }
}
