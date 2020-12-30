import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

/*
 * Login with google functionlity.
 */
class GoogleLogin extends StatefulWidget {
  @override
  _GoogleLoginState createState() => _GoogleLoginState();
}

class _GoogleLoginState extends State<GoogleLogin> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  signInWithGoogle() async {
    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    try {
      await _auth.signInWithCredential(credential);
    } on PlatformException catch (error) {
      var message = 'An error occurred. Please check your credentials';
      if (error.message != null) {
        message = error.message;
      }

      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    } catch (err) {
      print(err);
    }
  }

  void signOutGoogle() async {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          minWidth: MediaQuery.of(context).size.width * 0.80,
          color: Colors.white,
          height: 50,
          onPressed: () {
            signInWithGoogle().whenComplete(() {
              print('sucess');
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/google_light.png'),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Sign in with Google',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
