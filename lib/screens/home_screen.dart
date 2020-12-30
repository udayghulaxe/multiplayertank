import 'package:flutter/material.dart';
import '../widgets/map.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            MapBackground(),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.28,
              child: Container(
                child: Image.asset(
                  'assets/images/tank_left.png',
                  height: 50,
                  width: 60,
                ),
                // height: 60,
                // width: 80,
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width - 60,
              bottom: MediaQuery.of(context).size.height * 0.28,
              child: Container(
                child: Image.asset(
                  'assets/images/tank_right1.png',
                  height: 50,
                  width: 60,
                ),
                // height: 60,
                // width: 80,
              ),
            )
          ],
        ),
      ),
    );
  }
}
