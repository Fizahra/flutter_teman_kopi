import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/model/kucing_model.dart';

class OutdoorGalleryDetail extends StatefulWidget {
  final int index;
  const OutdoorGalleryDetail({super.key, required this.index});

  @override
  State<OutdoorGalleryDetail> createState() => _OutdoorGalleryDetailState();
}

class _OutdoorGalleryDetailState extends State<OutdoorGalleryDetail> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: height * 0.55,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(kucingKu[widget.index].image),
                  fit: BoxFit.cover,
                )),
              ),
            ],
          ),
        ),
        Positioned(
          left: 17,
          top: height * 0.08,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.keyboard_backspace,
              size: 42,
              color: Colors.white,
            ),
          ),
        ),
      ]),
    );
  }
}
