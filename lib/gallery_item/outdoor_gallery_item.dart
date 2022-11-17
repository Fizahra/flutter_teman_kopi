import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/model/kucing_model.dart';
import 'package:flutter_teman_kopi/pages/detail_pages/outdoor_gallery_detail.dart';

class OutdoorGalleryItem extends StatelessWidget {
  final int index;
  const OutdoorGalleryItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => OutdoorGalleryDetail(
                        index: index,
                      )));
        },
        child: Image.asset(
          kucingKu[index].image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
