
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';

class PickOptionAndNext extends StatefulWidget {
  const PickOptionAndNext({super.key});

  @override
  State<PickOptionAndNext> createState() => _PickOptionAndNextState();
}

class _PickOptionAndNextState extends State<PickOptionAndNext> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-30,
      // color: Colors.red,
      // padding: const EdgeInsets.symmetric(horizontal: 20),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          // const SizedBox(width: 10),
          Container(
            width: MediaQuery.of(context).size.width * 0.63,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Pick your Option\nSee who has a similar mind.", style: TextStyle(fontSize: 16, color: light))),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.37-40,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: primaryDilutedColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/icons/mic.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/icons/next.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
