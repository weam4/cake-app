import 'package:cake/core/color.dart';
import 'package:cake/core/text_style.dart';
import 'package:cake/data/cake.dart';
import 'package:cake/widgets/cake_item_card.dart';
import 'package:cake/widgets/menu_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            const MenuBarW(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 30, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Creative',
                      style: TextStyle(fontSize: 16, color: pinky,fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Cake Designs',
                      style: headline1,
                    ),
                    Expanded(
                      child: Scrollbar(
                        thickness: 3,
                        child: ListView.builder(
                          itemCount: cakes.length,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (itemBuilder, index) {
                            final cake = cakes[index];
                            return CakeItemCard(
                              cake: cake,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
