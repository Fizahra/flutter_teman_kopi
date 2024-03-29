import 'package:flutter/material.dart';
import 'package:flutter_teman_kopi/data/data_sources/local/model/drinks_model.dart';

import '../../pages/detail_pages/drinks_detail_page.dart';

class DrinksMenuItem extends StatelessWidget {
  final int index;
  final Drinks item;
  const DrinksMenuItem({super.key, required this.index, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 40),
      child: AspectRatio(
        aspectRatio: 3 / 1,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DrinksDetailPage(
                              index: index,
                            )));
              },
              child: Row(
                children: [
                  AspectRatio(
                    aspectRatio: 1 / 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        item.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.nama,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            item.shortdesc,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Rp. ${item.price}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_circle,
                color: Color.fromARGB(255, 153, 109, 93),
                size: 36,
              ),
            )
          ],
        ),
      ),
    );
  }
}
