import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({ 
    required this.title,
    required this.icon,
    this.iconSize =30,this.textSize = 18,
    super.key,
  });
final IconData icon;
final String title;
final double iconSize;
final double textSize;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(icon,color: kColorWhite,size: iconSize,),
      Text(title,style: TextStyle(
        fontSize: textSize,color: kColorWhite)),
    ],);
  }
}

