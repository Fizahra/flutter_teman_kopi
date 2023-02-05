import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/data/data_sources/local/model/cat_model.dart';

import '../../pages/detail_pages/indoor_gallery_detail.dart';

class IndoorGalleryItem extends StatelessWidget {
  final int index;
  const IndoorGalleryItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => IndoorGalleryDetail(
                      index: index,
                    )));
      },
      child: Image.asset(
        myCat[index].image,
        fit: BoxFit.cover,
      ),
    );
  }
}
