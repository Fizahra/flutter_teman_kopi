import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/model/cat_model.dart';

class IndoorGalleryDetail extends StatefulWidget {
  final int index;
  const IndoorGalleryDetail({super.key, required this.index});

  @override
  State<IndoorGalleryDetail> createState() => _IndoorGalleryDetailState();
}

class _IndoorGalleryDetailState extends State<IndoorGalleryDetail> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                  image: AssetImage(myCat[widget.index].image),
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
