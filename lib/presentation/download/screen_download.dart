import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/widgets/app_bar.dart';

class ScreenDownloads extends StatelessWidget {
   ScreenDownloads({super.key});

final List imageList = [
  'https://www.themoviedb.org/t/p/w220_and_h330_face/4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg',
  'https://www.themoviedb.org/t/p/w220_and_h330_face/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg',
  'https://www.themoviedb.org/t/p/w220_and_h330_face/fiVW06jE7z9YnO4trhaMEdclSiC.jpg',
];

  @override
  Widget build(BuildContext context) {
    final Size size =MediaQuery.of(context).size;
    return Scaffold(
      appBar:const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child:AppBarWidget(
          title: 'Downloads',)),
      body:
      ListView(children: [
   _SmartDownloads(),
        kwidth,
   const     Text('Introducing Downloads for you',
   textAlign: TextAlign.center,style:TextStyle(color: kColorWhite,fontSize:22,fontWeight:FontWeight.bold  ) ,),
   kheight,
   const     Text('We will download a personllised selection of\nfor movies and shows for you .so there\nis always something to watch on your\ndevice',
   textAlign: TextAlign.center,style:TextStyle(color: Colors.grey,fontSize:16, )),
    kheight,
    SizedBox(
      width:size.width ,
      height: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
         CircleAvatar(radius: size.width * 0.4,
         backgroundColor: Colors.grey.withOpacity(0.5),
         ),
      DownloadsImageWidget(imageList     : imageList[0],
       margin: EdgeInsets.only(left: 130,bottom: 50),angle: 21,
              size: Size(size.width*0.5,size.width * 0.58),
),
      DownloadsImageWidget(imageList: imageList[1], 
      margin: EdgeInsets.only(right: 130,bottom: 50),angle:-21,
              size: Size(size.width*0.5,size.width * 0.58),
  ),
      DownloadsImageWidget(imageList: imageList[2],
      radius: 20,
       margin: EdgeInsets.only(top: 0),  
            size: Size(size.width*0.65,size.width*0.65),
),

        ],
      ),
    ),
     Padding(
       padding: const EdgeInsets.symmetric(vertical: 10),
       child: MaterialButton(
            color: kButtonColorBlue,
            onPressed: (){},
            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5) ),
            child: Text('Set up',style: TextStyle(
              fontSize: 20,
              fontWeight:FontWeight.bold 
            ),),),
     ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: MaterialButton(
            color: kColorWhite,
            onPressed: (){},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Text('See What you con download',
            style: TextStyle(
             color: kBlackcolor,
              fontSize: 20,
              fontWeight:FontWeight.bold 
            ),),),
        ),
      ],),
    );
}
}





  Row _SmartDownloads() {
    return const     Row(
        children: [
          kwidth,
          Icon(Icons.settings,
       ),
       kwidth,
       Text('Smart Downloads'),
        ],
        
      );
  }


class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    this.angle=0,
    required this.imageList,
    required this.margin,
    required this.size,
    this.radius=10,
  });

  final String imageList;
final double angle;
final EdgeInsets margin;
final Size size;
final double radius;
  @override
  Widget build(BuildContext context) {

    return Transform.rotate(
      angle: angle * pi /180,
      child: Container(
        margin: margin,
        width: size.width ,
        height: size.width ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          image:DecorationImage(
          
          image:NetworkImage(imageList),),),
        
      ),
    );
  }
}



