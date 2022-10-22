import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget teamStat(String team, String logoUrl, String teamName){
  return Expanded(
    child: Column(
      children: [
           Text(
             team,
             style: const TextStyle(
               fontSize:20.0,
             ),
           ),

           const SizedBox(
               height: 10.0,
           ),
           Expanded(child:Image.network(
             logoUrl,
             width:54,
           ),
          ),
       const SizedBox(
               height: 10.0,
        ),
         Text(
             teamName,
             style: const TextStyle(
               fontSize:18.0,
             ),
           ),
      ],
    ),
  );
}