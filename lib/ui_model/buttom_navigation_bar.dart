


import 'package:fe_app/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      width: MediaQuery.of(context).size.width,
      height: 60,
      // color: Colors.red,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          BottomNavigationBarButton(
            width: 60,
            height: 60, imageLocation: 'lib/assets/icons/Card.png',
          ),
          BottomNavigationBarButton(
            width: 60,
            height: 60, imageLocation: 'lib/assets/icons/BoneFire.png',
          ),
          BottomNavigationBarButton(
            width: 60,
            height: 60, imageLocation: 'lib/assets/icons/Chat.png',
          ),
          BottomNavigationBarButton(
            width: 60,
            height: 60, imageLocation: 'lib/assets/icons/User.png',
          ),
        ],
      ),
    );
  }
}


class BottomNavigationBarButton extends StatefulWidget {
  final double width;
  final double height;
  final String imageLocation;
  final int badgeValue;
  const BottomNavigationBarButton({super.key, required this.width, required this.height, required this.imageLocation, this.badgeValue = 0});

  @override
  State<BottomNavigationBarButton> createState() => _BottomNavigationBarButtonState();
}

class _BottomNavigationBarButtonState extends State<BottomNavigationBarButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Stack(
        children: [
          Image.asset(
            widget.imageLocation,
            width: 50,
            height: 50,
          ),
          if (widget.badgeValue > 0)
            Positioned(
              right: -5,
              top: -5,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FittedBox(
                  child: Text(
                    widget.badgeValue.toString(),
                    style: TextStyle(
                      color: light,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
