import 'package:flutter/material.dart';
import 'package:netflix/presentation/download/screen_download.dart';
import 'package:netflix/presentation/fast_laugh/Screen_fast_laugh.dart';
import 'package:netflix/presentation/home/home_screen.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_navi.dart';
import 'package:netflix/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix/presentation/search/search.dart';

class ScreenMainPage extends StatelessWidget {
 ScreenMainPage({super.key});
final pages=  [
 const ScreenHome(),
const  ScreenNewAndHot(),
const  ScreenFastLaugh(),
 const ScreenSearch(),
 ScreenDownloads(),
  
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexchangeNotifier,
         builder: (context, int index, _) {
   return pages[index];
    },),
      bottomNavigationBar:const BottomNavigationWidget(),
    );
    
  }
}