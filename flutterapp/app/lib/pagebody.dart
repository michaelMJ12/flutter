import 'package:app/goalstat.dart';
import 'package:app/teamstat.dart';
// import 'package:flutter/cupertino.dart';.
import 'package:flutter/material.dart';
import 'Soccer_model.dart';
import 'matchtile.dart';

Widget PageBody(
  SoccerMatch allmatches,
) {
  return Column(
    children: [
      Expanded(
        flex: 2,
        child: Container(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                teamStat(
                    allmatches.response!.first.teams!.home!.name!,
                    allmatches.response!.first.teams!.home!.logo!,
                    allmatches.response!.first.teams!.home!.name!),
                goalStat(
                  allmatches.response!.first.fixture!.status!.elapsed!,
                  allmatches.response!.first.goals!.home!,
                  allmatches.response!.first.goals!.away!,
                ),
                teamStat(
                    allmatches.response!.first.teams!.away!.name!,
                    allmatches.response!.first.teams!.away!.logo!,
                    allmatches.response!.first.teams!.away!.name!)
              ],
            ),
          ),
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff437309),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'MATCHES',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: allmatches.results,
                    itemBuilder: (context, index) {
                      return matchTile(allmatches, index);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
