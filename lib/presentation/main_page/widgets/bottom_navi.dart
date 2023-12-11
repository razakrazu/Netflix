import 'package:flutter/material.dart';
 ValueNotifier<int>indexchangeNotifier=ValueNotifier(0);
class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder(valueListenable: indexchangeNotifier, 
    builder:(context,int newindex, _) {
   return   BottomNavigationBar(
      currentIndex: newindex,
      onTap: (index) {
        indexchangeNotifier.value=index;
        
      },
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromARGB(31, 128, 126, 126),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: const IconThemeData(color: Colors.white,),
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      items: const [
        BottomNavigationBarItem(
          
          icon: Icon(Icons.home),
          label:'Home' ),
             BottomNavigationBarItem(
          icon: Icon(Icons.collections),
          label:'New & Hot' ),
             BottomNavigationBarItem(
          icon: Icon(Icons.emoji_emotions),
          label:'Fast Laught' ),
             BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label:'Search' ),
             BottomNavigationBarItem(
          icon: Icon(Icons.download),
          label:'Downloads' ),
      ]);
    }, );
  }
}