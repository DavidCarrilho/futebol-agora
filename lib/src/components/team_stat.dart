import 'package:flutter/material.dart';

Widget teamStat(String team, String logoUrl, String teamName) {
  return Expanded(
    child: Column(
      children: [
        Text(
          team,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        SizedBox(height: 10),
        Expanded(
          child: Image.network(
            logoUrl,
            width: 54,
          ),
        ),
        SizedBox(height: 10),
        Text(
          teamName,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ],
    ),
  );
}
