import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/search/title.dart';

const imageUrl=   'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/sJDBJxKWG7h3VpG6jc9Mm9bw4kG.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
     const    SearchTextTitle(title: 'Top Searches'),
            kheight,
       Expanded(
         child: ListView.separated(
          shrinkWrap: true,
         itemBuilder: (ctx ,index)=>const TopSearchItemTile(), 
         separatorBuilder: (ctx ,index)=>kheight20,
          itemCount: 10,),
       ),
      ],
    );
  }
}


class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth =MediaQuery.of(context).size.width;
    return Row(
      children: [
        
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration:const BoxDecoration(
            
            image:  DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),),
          ),
        ),
        kwidth,
  const      Expanded(child: Text('Movie name',style: TextStyle(
          color: kColorWhite,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),)),
   const    CircleAvatar(backgroundColor: kColorWhite,
       radius: 27,
       child: CircleAvatar(
        backgroundColor: kBlackcolor,
        radius: 23,
        child:  Icon(CupertinoIcons.play_fill,color:kColorWhite,),
       ),
       ),
      ],
    );
  }



}

 