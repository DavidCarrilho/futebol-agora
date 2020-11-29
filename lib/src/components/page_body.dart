import 'package:flutter/material.dart';
import 'package:futebolagora/src/components/goalStat.dart';
import 'package:futebolagora/src/components/match_tile.dart';
import 'package:futebolagora/src/components/team_stat.dart';
import 'package:futebolagora/src/models/fut_model.dart';

Widget pageBody(List<FutMatch> allMateches) {
  return Column(
    children: [
      Expanded(
        flex: 2,
        child: Container(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              teamStat(
                "Mandante",
                allMateches[0].home.logoUrl,
                allMateches[0].home.name,
              ),
              goalStat(
                allMateches[0].fixture.status.elapsedTime,
                allMateches[0].goal.home,
                allMateches[0].goal.away,
              ),
              teamStat(
                "Visitante",
                allMateches[0].away.logoUrl,
                allMateches[0].away.name,
              )
            ],
          ),
        )),
      ),
      Expanded(
        flex: 5,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 26, 16, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "PARTIDAS",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: allMateches.length,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        print("Acabou o Acesso");
                      } else {
                        return matchTile((allMateches[index]));
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}
