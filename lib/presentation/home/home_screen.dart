import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/widgets/background_card.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';
import 'package:netflix/presentation/widgets/number_title_card.dart';
 ValueNotifier<bool>scrollNotifier = ValueNotifier(true);
class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}


class _ScreenHomeState extends State<ScreenHome> {
  
  @override
  void initState() {
    super.initState();
    // trendingMovies= Api().getTrendingMovies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(valueListenable: scrollNotifier, builder: (BuildContext context ,index, _) {
        return NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          final ScrollDirection direction= notification.direction;
          print(direction);
          if(direction==ScrollDirection.reverse){
            scrollNotifier.value=false;
          }else if(direction== ScrollDirection.forward){
scrollNotifier.value = true;
          }
          return true;
        },
        child: Padding(
          padding:        const EdgeInsets.all(10),
          child: Stack(
            children: [
              ListView(
                children: const[
              
                  BackGroundCard(),
                  kheight,
                     MainTitleCard(
                    title: 'Released in the past year',
                  ),
                  kheight,
                     MainTitleCard(
                    title: 'Trending Now',
                  ),
                  kheight,
                        NumberTitileCard(),
                  kheight,
                     MainTitleCard(title: 'Tense Dramas'),
                  kheight,
                      MainTitleCard(
                    title: 'South Indian Cinema',
                  ),
                  kheight,
                ],
              ),
            scrollNotifier.value==true
            ? AnimatedContainer(
              duration:Duration(milliseconds: 1000) ,
                width: double.infinity,
                height: 90,
                color: Colors.black.withOpacity(0.5),
                child: Column(
                  children: [
Row(
  children: [
    Image.network('https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png',
    width: 60,height: 60,),
        Spacer(),
        Icon( Icons.cast,
        size: 30,),
        kwidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
        kwidth,
  ],
),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
  children: [
  Text('TV Shows',
     style: kHomeTitleText,
  ),
  Text('Movies',  style: kHomeTitleText,),
  Text('Catecories',  style: kHomeTitleText,),
],)
                  ],
                ),
              ):
              kheight
            ],
          ),
        ),
      );
      },)
    );
  }
}
