
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({required this. index,super.key,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        color: Colors.accents[index % Colors.accents.length],
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10 ,vertical: 10 ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black.withOpacity(0.5),
            child: IconButton(
              onPressed: (){}, icon: Icon(Icons.volume_off,color: kColorWhite,size: 30,),),),
       const       Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical:10 ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://www.themoviedb.org/t/p/w600_and_h900_bestv2/zTTgI92GGVtYIGunown2oWOUDES.jpg'),
                  ),
                ),
               VideoActions(icon: Icons.emoji_emotions, title: 'Lol'),
               kheight,
               VideoActions(icon: Icons.add, title: 'My List'),
                  kheight,
               VideoActions(icon: Icons.share, title: 'Share'),
                  kheight,
               VideoActions(icon: Icons.play_arrow, title: 'play'),
       kheight,

              ],),
            ],
          ),
        ),
      )
      ]
    );
  }
}
class VideoActions extends StatelessWidget {
  final IconData icon;
  final String title; 
  const VideoActions ({required this.icon,required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          Icon(icon,color: Colors.white,
          size: 30,
          ),
          Text(title,style: TextStyle(
            fontSize: 14,
            color:kColorWhite,),),
        ],
      ),
    );
}
}