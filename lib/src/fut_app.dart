import 'package:flutter/material.dart';
import 'package:futebolagora/src/api_manager.dart';
import 'package:futebolagora/src/components/page_body.dart';

class FutApp extends StatefulWidget {
  @override
  _FutAppState createState() => _FutAppState();
}

class _FutAppState extends State<FutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "FUTEBOL AGORA",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: FutureBuilder(
        future: FutApi().getAllMatches(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return pageBody(snapshot.data);
          } else {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(28),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    SizedBox(height: 150, child: Image.asset("icon/icon.png")),
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
