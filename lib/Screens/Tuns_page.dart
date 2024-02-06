import 'package:flutter/material.dart';
import 'package:tuns_app/models/tune_model.dart';
import 'package:tuns_app/widgets/tune_item.dart';

class TunesPage extends StatelessWidget{
  const TunesPage({super.key});
  final List<TuneModel> itemModel=const[TuneModel(color: Colors.deepOrange, sound:'elekhlas.mp3'),
    TuneModel(color: Colors.deepPurpleAccent, sound:'elfalak.mp3'),
    TuneModel(color:  Colors.lightGreenAccent, sound:'elNas.mp3'),
    TuneModel(color: Colors.lightBlue, sound: 'Alkaferon.mp3'),
    TuneModel(color: Colors.pinkAccent, sound: 'AlNasr.mp3'),
    TuneModel(color: Colors.indigoAccent, sound: 'assets/AlMased.mp3'),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
       centerTitle: true,
       title:const  Text('Verses from the Holy Quran',
                style: TextStyle(fontSize: 20 ,color:Colors.white,fontWeight: FontWeight.bold),
       ),
      ),
      body: Column(
        children: getTuneItems() ,
       // itemColors.map((e) =>TuneItem(tuneColor: e)).toList() ,

         /*[ TuneItem(tuneColor: Colors.deepOrange),
          TuneItem(tuneColor: Colors.deepPurpleAccent),
          TuneItem(tuneColor: Colors.lightGreenAccent),
          TuneItem(tuneColor: Colors.pinkAccent),
          TuneItem(tuneColor: Colors.lightBlue),
          TuneItem(tuneColor: Colors.red),
          TuneItem(tuneColor: Colors.indigoAccent), ] */

      ),

    );

  }

    List<TuneItem> getTuneItems(){
    List<TuneItem> items=[];
    for(var item in itemModel){
      items.add(TuneItem(itemObj: item ));
    }
    return items;
  }


}