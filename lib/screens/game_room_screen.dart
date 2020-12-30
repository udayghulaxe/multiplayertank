import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:multiplayertank/widgets/map.dart';

class GameRoomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            MapBackground(),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 40),
              // padding: EdgeInsets.all(20),
              child: Text(
                'Tank Battle',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            if (1 == 1) Text('ji'),
            Container(
              margin: EdgeInsets.only(
                top: 120,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    elevation: 5,
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Colors.blueAccent,
                        )),
                    child: Text(
                      'Create Room',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(10),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Colors.blueAccent,
                        )),
                    child: Text(
                      'Join Room',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
