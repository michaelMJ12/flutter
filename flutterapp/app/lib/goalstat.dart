// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget goalStat(int expandedTime, int homeGoal, int awayGoal) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '${expandedTime}',
          style: const TextStyle(
            fontSize: 30.0
          ),
        ),
        Expanded(
          child:Center(
            child:Text(
              '${homeGoal} - ${awayGoal}' ,
              textAlign: TextAlign.center,
              style:const TextStyle(
                fontSize:36.0
                
                ),

            ),
            ),
         )
      ],
    ),
  );
}
