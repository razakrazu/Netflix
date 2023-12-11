import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/home/number_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class NumberTitileCard extends StatelessWidget {
  const NumberTitileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight20,
  const      MainTitle(title: 'Top 10 Tv Show Today'),
        kheight,
       LimitedBox(
    maxHeight: 200,
     child: ListView(
      
      scrollDirection: Axis.horizontal,
      children: List.generate(10, (index) => NumberCard(index: index,),),
     ),
       )
      ],
    );
  }
}

