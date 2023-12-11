import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: 200,
            child:Image.network(newAndHottempImage), 
            ),
             Positioned(
              bottom: 10,
              right: 10,
               child: CircleAvatar(
                         radius: 25,
                         backgroundColor: Colors.black.withOpacity(0.5),
                         child: IconButton(
                onPressed: (){}, icon: Icon(Icons.volume_off,color: kColorWhite,size: 22,),),),
             ),
      ],
    );
  }
}
