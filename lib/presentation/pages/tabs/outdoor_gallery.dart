import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/presentation/items/gallery_item/outdoor_gallery_item.dart';
import 'package:flutter_teman_kopi/data/data_sources/local/model/kucing_model.dart';

class OutdoorGallery extends StatelessWidget {
  const OutdoorGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: GridView.builder(
        itemCount: kucingKu.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, int key) {
          return OutdoorGalleryItem(index: key);
        },
      ),
    );
  }
}
