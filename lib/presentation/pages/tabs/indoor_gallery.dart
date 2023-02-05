import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/presentation/items/gallery_item/indoor_gallery_item.dart';
import 'package:flutter_teman_kopi/data/data_sources/local/model/cat_model.dart';

class IndoorGallery extends StatelessWidget {
  const IndoorGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: GridView.builder(
        itemCount: myCat.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, int key) {
          return IndoorGalleryItem(index: key);
        },
      ),
    );
  }
}
