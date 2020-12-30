import 'package:flutter/material.dart';

import '../widgets/login.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.70,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 50,
                    bottom: 10,
                  ),
                  width: 40,
                  height: 40,
                ),
                Text(
                  'Caption Cards',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Text(
                  'Lets get started',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Theme.of(context).primaryColor,
            ),
            child: GoogleLogin(),
          )
        ],
      ),
    );
  }
}
