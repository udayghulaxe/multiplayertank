import 'package:flutter/material.dart';

class MapBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width,
          color: Colors.lightBlue,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.03,
          color: Colors.green,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.02,
          color: Colors.green[700],
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          color: Colors.brown,
        ),
      ],
    );
  }
}
