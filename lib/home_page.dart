

import 'package:fe_app/ui_model/answers_and_action.dart';
import 'package:fe_app/ui_model/buttom_navigation_bar.dart';
import 'package:fe_app/ui_model/pick_option_and_next.dart';
import 'package:fe_app/ui_model/user_show.dart';
import 'package:fe_app/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: const EdgeInsets.only(left: 20, right: 20, ),
        child:  Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('lib/assets/images/bg_.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: linearGradient1,
              ),
            ),
             Positioned(
              top: 100,
              child: SizedBox(
                // padding: const EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Stroll Bonfire",
                            style: TextStyle(
                                fontSize: 34,
                                color: primaryDilutedColor,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    // bottom-right shadow
                                    offset: const Offset(2, 2), // Offset for the shadow
                                    blurRadius: 8, // Blur radius of the shadow
                                    color: Colors.black.withOpacity(0.2), // Color of the shadow
                                  ),
                                ],
                            )),
                        const SizedBox(width: 5),
                        Icon(Icons.keyboard_arrow_down_sharp, color: primaryDilutedColor, size: 30,)
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.alarm, color: light, size: 20,),
                        Text("22h 00m  ", style: TextStyle(fontSize: 16, color: light, fontWeight: FontWeight.bold)),
                        Icon(Icons.person_2_outlined, color: light, size: 20,),
                        Text("103", style: TextStyle(fontSize: 16, color: light, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),),
            Positioned(
              bottom: 60,
              child: Container(
                child: Column(
                  children: [
                    PersonQuestionProfile(),
                    AnswersActionButtons(),
                    SizedBox(height: 8),
                    PickOptionAndNext()
                  ],
                )
              ),
            ),
            Positioned(
                bottom: 0,
                child: BottomNavigationBarWidget()),
          ],
        ),
      ),
    );
  }
}
