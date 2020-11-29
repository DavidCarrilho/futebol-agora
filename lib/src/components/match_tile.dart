import 'package:flutter/material.dart';
import 'package:futebolagora/src/models/fut_model.dart';

Widget matchTile(FutMatch match) {
  var homeGoal = match.goal.home;
  var awayGoal = match.goal.away;
  if (homeGoal == null) homeGoal = 0;
  if (awayGoal == null) awayGoal = 0;

  return Card(
    color: Colors.white,
    margin: EdgeInsets.symmetric(vertical: 8),
    child: Padding(
      padding: const EdgeInsets.all(28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              match.home.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16,
              ),
            ),
          ),
          Image.network(
            match.home.logoUrl,
            width: 36,
          ),
          Expanded(
            child: Text(
              "$homeGoal - $awayGoal",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16,
              ),
            ),
          ),
          Image.network(
            match.away.logoUrl,
            width: 36,
          ),
          Expanded(
            child: Text(
              match.away.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
