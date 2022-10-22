import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
import 'Soccer_model.dart';

Widget matchTile(SoccerMatch match, int index) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            match.response![index].teams!.home!.name!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
        Image.network(
          match.response![index].teams!.away!.logo!,
          width: 36.0,
        ),
        Expanded(
          child: Text(
            '${match.response![index].goals?.home!} - ${match.response![index].goals?.away!}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
        Image.network(
          match.response![index].teams!.home!.logo!,
          width: 36.0,
        ),
        Expanded(
          child: Text(
            match.response![index].teams!.away!.name!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    ),
  );
}
