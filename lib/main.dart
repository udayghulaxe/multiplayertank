import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import './screens/auth_screen.dart';
import './screens/home_screen.dart';
import './screens/game_room_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  // await Flame.util.setLandscape(); //TODO Comment when running for web
  // await Flame.util.fullScreen(); //TODO Comment when running for web
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multiplayer Tank',
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (ctx, userSnapshot) {
          if (userSnapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          if (userSnapshot.hasData) {
            return GameRoomScreen();
          }
          return AuthScreen();
        },
      ),
      // routes: {LevelSelectScreen.routeName: (ctx) => LevelSelectScreen()}),
    );
  }
}
