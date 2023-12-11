import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  
  });



  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Row(
      children: [
  const      SizedBox(width:50,
         height: 430,
         child:   Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children:   [
          Text('FEB',style: TextStyle( fontSize: 16,color: KGreyKcolor, fontWeight: FontWeight.bold),),
          Text("11",style: TextStyle( fontSize: 30,letterSpacing: 4, fontWeight: FontWeight.bold),)
        ],),),
        SizedBox(
          width: size.width-50,
        height: 400,
       child:const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      VideoWidget(),
      Row(
        
        children: [
          Text('TALL GIRL 2',style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold,letterSpacing: -2)),
          Spacer(),
          Row(
            children: [
              CustomButtonWidget(title: 'Remind me', icon: Icons.notifications,iconSize: 25,textSize: 13,),
              kwidth,
              CustomButtonWidget(title: 'Info', icon: Icons.info,iconSize: 25,textSize: 13,),
              
            ],
          ),
          Kwidth20,
        ],
      ),
      kheight,
      Text('Coming on Friday'),
      kheight,
      Text('Tall Girl 2',style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold)),
      kheight,
      Text('Landing the lead in the school musical is a dream come true for jodi until the pressure sends her confidence - and her relationship - into a tailspain',
     style: TextStyle( color: KGreyKcolor, fontWeight: FontWeight.bold)
      ),
       ],),
        ),
      ],
    );
  }
}

