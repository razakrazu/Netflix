import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/search/title.dart';
const imageUrl =   'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/KoYWXbnYuS3b0GyQPkbuexlVK9.jpg';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
const SearchTextTitle( title: 'Movies & TV'),
kheight,
Expanded(child:GridView.count(
  shrinkWrap: true,
  crossAxisCount: 3,
  mainAxisSpacing: 8,
  crossAxisSpacing: 8,
  childAspectRatio: 1/1.5,
  children: List.generate(20, (index){
    return const MainCard();
  })
  ) )
    ],);
  }  
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(image: NetworkImage(imageUrl),
        
       ),
       borderRadius: BorderRadius.circular(7)
      ),
    );
  }
}