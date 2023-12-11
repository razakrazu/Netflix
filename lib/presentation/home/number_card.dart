import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({required this.index, super.key});
final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
        const    SizedBox(width: 50,height: 150,),
            Container(
              width:130 ,
              height:200 ,
              decoration:  BoxDecoration(
                borderRadius: kradius10,
                image: DecorationImage(
                  fit:BoxFit.cover,
                  image: NetworkImage('https://www.themoviedb.org/t/p/w600_and_h900_bestv2/lCanGgsqF4xD2WA5NF8PWeT3IXd.jpg'),),
              ),

             ),
          ],
        ),
        Positioned(
          left: 13,
          bottom: -15,
          child: BorderedText(
            strokeWidth: 10.0,
            strokeColor: kColorWhite,
            child: Text(
              '${index+1}',style:TextStyle(
                fontSize: 110,
                color: kBlackcolor,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              decorationColor: Colors.red) ,),
          )),
      ],
    );
  }
}
                  