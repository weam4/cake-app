import 'package:cake/core/color.dart';
import 'package:cake/core/text_style.dart';
import 'package:cake/data/menu.dart';
import 'package:cake/widgets/clipper.dart';
import 'package:flutter/material.dart';

class MenuBarW extends StatefulWidget {
  const MenuBarW({super.key});

  @override
  State<MenuBarW> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBarW> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 83,
      color: pinky,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 80),
            child: const Icon(Icons.menu,size: 35,color: white,),
          ),

          for (int i = 0; i < menuItems.length; i++)
            Center(
              child: menuButton(
                text: menuItems[i].name,
                onTap: () {
                  setState(() {
                    selectedIndex = i;
                  });
                },
                index: i,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 10),
              child: const Icon(Icons.home,size: 35,color: white,),
            ),
        ],
      ),
    );
  }

  Widget menuButton(
      {required String text, required int index, required Function() onTap}) {
    return InkWell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          RotatedBox(
            quarterTurns: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: TextButton(
                onPressed: onTap,
                child: Text(
                  text,
                  style: buttonText,
                ),
              ),
            ),
          ),
          selectedIndex == index
              ? RotatedBox(
                  quarterTurns: 2,
                  child: ClipPath(
                    clipper: CustomMenuClip(),
                    child: Container(
                      width: 35,
                      height: 110,
                      color: Colors.white,
                      child: const Center(
                        child: CircleAvatar(
                          radius: 3,
                          backgroundColor: pinky,
                        ),
                      ),
                    ),
                  ),
                )
              : const SizedBox(
                  width: 35,
                  height: 110,
                )
        ],
      ),
    );
  }
}
