
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';

class PersonQuestionProfile extends StatefulWidget {
  const PersonQuestionProfile({super.key});

  @override
  State<PersonQuestionProfile> createState() => _PersonQuestionProfileState();
}

class _PersonQuestionProfileState extends State<PersonQuestionProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      // color: primaryDilutedColor,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 75,
            width: MediaQuery.of(context).size.width- 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/images/profile.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 5),
                  width: MediaQuery.of(context).size.width - 40 -70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Angelina, 28", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color:light)),
                      Container(
                        padding: const EdgeInsets.only(left:5, top: 4),
                        // color: Colors.green,
                          width: MediaQuery.of(context).size.width - 40 -70,
                          child: Text("What is your favorite time of the day?", style: TextStyle(fontSize: 25, color: light, height: 1.15, fontWeight: FontWeight.bold))),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text('"Mine is definitely the peace in the morning."', style: TextStyle(color: primaryWhiteLight,fontSize: 13, fontStyle: FontStyle.italic,)),
        ],
      )
    );
  }
}
