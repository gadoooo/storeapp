import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';

class colordot extends StatelessWidget{
  colordot ({Key? key,required this.fillcolor,required this.isSelected}) : super(key: key);
  final Color fillcolor;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding/2.5),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:Border.all(color: isSelected? kTextLightColor : Colors.transparent),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillcolor,
        ),
      ),
    );
  }

}