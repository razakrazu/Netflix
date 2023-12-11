

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/search/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          CupertinoSearchTextField(
            backgroundColor: Colors.grey.withOpacity(0.4),
            prefixIcon:const Icon(CupertinoIcons.search,
            color: Colors.grey,),
            style:const TextStyle( color: Colors.white),
            suffixIcon:const Icon(CupertinoIcons.xmark_circle_fill),
          ),
          kheight,
          Expanded(child: SearchResultWidget()),

   
              ],),
        )) ,
    );
}
}
