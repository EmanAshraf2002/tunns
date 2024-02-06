import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuns_app/models/tune_model.dart';

class TuneItem extends StatelessWidget{
  const TuneItem({super.key, required this.itemObj});

  final TuneModel itemObj;

  @override
  Widget build(BuildContext context) {
     return Expanded(
       child: GestureDetector(
         onTap:(){
           final player =AudioPlayer();
           player.play(AssetSource(itemObj.sound));
         },
         child: Container(
           color:itemObj.color ,

         ),
       ),
     );
  }

}