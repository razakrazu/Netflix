import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  const EveryoneWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return   const  Column(
    
crossAxisAlignment: CrossAxisAlignment.start,    
      children: [
    
    kheight,
    
    Text('Friends',style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold)),
    
          kheight,
    
          Text('This hit sitcom follows the merry misadventures of six 20- samething pals as they navigate the pitfalls of work life and love in 1999s Manhattan',
    
         style: TextStyle( color: KGreyKcolor, fontWeight: FontWeight.bold)
    
          ),
    
          Khight50,
    
          VideoWidget(),
    
          kheight,
    
          Row(
    
    mainAxisAlignment: MainAxisAlignment.end,
    
            children: [
    
              CustomButtonWidget(title: 'Share', icon: Icons.share,iconSize: 25,textSize: 13,),
    
              kwidth,
    
                CustomButtonWidget(title: 'My List', icon: Icons.add,iconSize: 25,textSize: 13,),
    
                kwidth,
    
                  CustomButtonWidget(title: 'Play', icon: Icons.play_arrow,iconSize: 25,textSize: 13,),
    
                  kwidth,
    
          ],)
    
      ],
    
    );
  }
}
