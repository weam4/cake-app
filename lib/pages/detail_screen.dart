import 'package:cake/core/color.dart';
import 'package:cake/core/text_style.dart';
import 'package:flutter/material.dart';
import 'package:cake/data/cake.dart';
import 'package:flutter/widgets.dart';

class DetailScreen extends StatefulWidget {
  final Cake cake;
  const DetailScreen({super.key, required this.cake});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
          ),

          //IconButton(onPressed: (){}, icon: const Icon(Icons.favorite),)
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: height,
            color: pinky,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height / 1.5,
              decoration: const BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                ),
              ),
            ),
          ),
          //
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(
                  //color: Colors.amber,
                  height: height / 2.2,
                  width: MediaQuery.of(context).size.width,
                  child: PageView(
                    physics: const BouncingScrollPhysics(),
                    onPageChanged: (index) {
                      setState(() {
                        selectedImage = index;
                      });
                    },
                    children: [
                      for (int i = 0; i < widget.cake.images.length; i++)
                        Image.asset(
                          widget.cake.images[i],
                          height: height / 2.2,
                          width: MediaQuery.of(context).size.width,
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          for (int k = 0; k < widget.cake.images.length; k++)
                            Container(
                              margin: const EdgeInsets.only(bottom: 5),
                              height: k == selectedImage ? 20 : 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: k == selectedImage
                                    ? pinky
                                    : pinky.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            widget.cake.name,
                            style: headline1,
                          ),
                          Text(
                            widget.cake.description,
                            style: headline2,
                          ),
                          Row(
                            children: [
                              Text(
                                widget.cake.price,
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
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: 185,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Select size',
                      style: headline4,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          height: 30,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Text(
                            '0.5 Kg',
                            textAlign: TextAlign.center,
                            style: headline3,
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 30,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Text(
                            '1 Kg',
                            textAlign: TextAlign.center,
                            style: headline3,
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 30,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Text(
                            '2 Kg',
                            textAlign: TextAlign.center,
                            style: headline3,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Add to Cart',
                    style: TextStyle(
                        color: pinky,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
