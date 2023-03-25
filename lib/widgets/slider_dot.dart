// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SliderDot extends StatelessWidget {
  bool isActive;
   SliderDot({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: isActive ? 12 :5,
                  height: 5,
                  decoration: BoxDecoration(
                      color:isActive? Colors.white :Colors.white54,
                      borderRadius: BorderRadius.circular(5)), duration: Duration(milliseconds: 150),
                );
  }
}
