import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/new_and_hot/widget/coming_soon_widget.dart';
import 'package:netflix/presentation/new_and_hot/widget/everyone_watching_widget.dart';
  
class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
         appBar: PreferredSize(
          preferredSize:const Size.fromHeight(90),
          child:AppBar(
            title:const Text('New & Hot',style:TextStyle(fontSize: 30,
          fontWeight: FontWeight.bold),
          ),  
          actions: [
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
          
          bottom: TabBar(
            labelColor: kBlackcolor,
            isScrollable: true,
            labelStyle: TextStyle(
              fontSize: 16,fontWeight: FontWeight.bold),
            indicator:BoxDecoration(
              color: kColorWhite,
              borderRadius: kradius30,
            
              
              ) ,
            tabs:const [
            Tab(text: '🍿 Coming Soon',),
            Tab(text:"👀 Everyone's watching" ,)
          ]),
          ),
            ),
        body:TabBarView(children: [
     _BuildComingSoon(),
      _BuildEveyonesWatch(),
    
        ])
      ),
    );
}
Widget _BuildComingSoon(){

return ListView.builder(
  itemCount: 10,
  itemBuilder:(BuildContext context, index) => ComingSoonWidget(),
  
 );
}
Widget _BuildEveyonesWatch(){
return ListView.builder(
  itemCount: 10,
  itemBuilder:(BuildContext context, index) => EveryoneWatchingWidget(),
  
 );

}
    
    }

