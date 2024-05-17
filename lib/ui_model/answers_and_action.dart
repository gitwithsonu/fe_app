


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';

class AnswersActionButtons extends StatefulWidget {
  const AnswersActionButtons({super.key});

  @override
  State<AnswersActionButtons> createState() => _AnswersActionButtonsState();
}

class _AnswersActionButtonsState extends State<AnswersActionButtons> {

  String selectedOption = "";

  void setSelectedOption(String option){
    setState(() {
      selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      // color: Colors.red,
      child: Column(
        children: [
          Row(
            children: [
              AnswerButton(
                text: "The peace in the early mornings",
                optionLetter: "A",
                width: MediaQuery.of(context).size.width * 0.45,
                height: 60, onPressed: setSelectedOption, selected: selectedOption,
              ),
              const SizedBox(width: 10),
              AnswerButton(
                text: "The magical golden hours",
                optionLetter: "B",
                width: MediaQuery.of(context).size.width * 0.45,
                height: 60, onPressed: setSelectedOption, selected: selectedOption,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              AnswerButton(
                text: "Wind-down time after dinners",
                optionLetter: "C",
                width: MediaQuery.of(context).size.width * 0.45,
                height: 60, onPressed: setSelectedOption, selected: selectedOption,
              ),
              const SizedBox(width: 10),
              AnswerButton(
                text: "The serenity past midnight",
                optionLetter: "D",
                width: MediaQuery.of(context).size.width * 0.45,
                height: 60, onPressed: setSelectedOption, selected: selectedOption,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AnswerButton extends StatefulWidget {
  final String selected;
  final String text;
  final String optionLetter;
  final double width;
  final double height;
  final Function onPressed;
  const AnswerButton({super.key, required this.text, required this.optionLetter, required this.width, required this.height, required this.onPressed, required this.selected});

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.onPressed(widget.optionLetter);
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        padding: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
          border: (widget.selected == widget.optionLetter) ? Border.all(color: primaryColor, width: 2) : Border.all(color: Colors.transparent, width: 2),
          boxShadow: [
            boxShadow1,
            boxShadow2,
            boxShadow3,
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                color: (widget.selected == widget.optionLetter) ? primaryColor : null,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: (widget.selected == widget.optionLetter) ?primaryColor:unselectedTextColor, width: 2),
              ),
              child: Center(
                child: Text(widget.optionLetter,
                  style: TextStyle(
                      color: (widget.selected == widget.optionLetter)? light : unselectedTextColor,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            SizedBox(
                width: widget.width - 30 - 10 - 12,
                child: Text(widget.text, style: TextStyle(color: unselectedTextColor),)),
          ],
        ),
      ),
    );
  }
}
