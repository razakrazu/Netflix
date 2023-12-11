import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key,required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
    const    SizedBox(height: 90,),
        kwidth,
        Text(title, style: const TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),
        ),
  const      Spacer(),
    const    Icon(Icons.cast,
        size: 30,),
        kwidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
        kwidth,
      ],
    );
  }
}