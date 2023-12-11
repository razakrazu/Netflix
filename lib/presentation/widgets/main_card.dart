import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';

class MainCards extends StatelessWidget {
  const MainCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 10 ),
      width:130 ,
      height:250 ,
      decoration:  BoxDecoration(
        borderRadius: kradius10,
        image:const DecorationImage(image: NetworkImage('https://www.themoviedb.org/t/p/w600_and_h900_bestv2/zTTgI92GGVtYIGunown2oWOUDES.jpg'),),
      ),

    );
  }
}