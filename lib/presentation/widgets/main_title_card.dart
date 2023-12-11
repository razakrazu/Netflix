import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,required this.title
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight20,
        MainTitle(title: title),
        kheight,
       LimitedBox(
    maxHeight: 200,
     child: ListView(
      
      scrollDirection: Axis.horizontal,
      children: List.generate(10, (index) =>      MainCards(),),
     ),
       )
      ],
    );
  }
}

