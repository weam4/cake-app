import 'package:cake/core/color.dart';
import 'package:cake/core/text_style.dart';
import 'package:cake/data/cake.dart';
import 'package:cake/pages/detail_screen.dart';
import 'package:flutter/material.dart';

class CakeItemCard extends StatelessWidget {
  final Cake cake;
  const CakeItemCard({super.key, required this.cake});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (builer) => DetailScreen(
              cake: cake,
            ),
          ),
        );
      },
      child: Container(
        height: 400,
        margin: const EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              cake.images[0],
              height: 250,
            ),
            Text(
              cake.name,
              style: headline1,
            ),
            Text(
              cake.description,
              style: headline2,
            ),
            Row(
              children: [
                Text(
                  cake.price,
                  style: headline3,
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(1, 6),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
