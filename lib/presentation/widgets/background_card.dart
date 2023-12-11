import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/widgets/custom_button_widget.dart';

class BackGroundCard extends StatelessWidget {
  const BackGroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
              children:  [
                Container(
                  width: double.infinity,
                  height: 600,
                  decoration:        const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1Xgjl22MkAZQUavvOeBqRehrvqO.jpg'))),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:10,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                         const       CustomButtonWidget(
                          title: 'My List',
                          icon: Icons.add,
                        ),
                        kwidth,
                        _PlayButton(),
                        Kwidth20,
                                  const     CustomButtonWidget(title: 'Info', icon: Icons.info,),
                      ],
                    ),
                  ),
                ),
              ],
            );
  }
}
TextButton _PlayButton() {
    return  TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kColorWhite),
            shape: MaterialStatePropertyAll(BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(3.70),),),),
        icon:        const Icon(
          Icons.play_arrow,
          size: 30,
        color: kBlackcolor,
        ),
        label:        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Play',
            style: TextStyle(fontSize: 20, color: kBlackcolor),
          ),
        ));
  }