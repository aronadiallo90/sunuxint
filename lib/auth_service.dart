import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/pages/Begin.dart';
import 'package:untitled/pages/Interest.dart';
import 'package:untitled/widgets/Acceuil.dart';

import 'home_page.dart';
import 'login_page.dart';

class AuthService{

handleAuthState(){
  return StreamBuilder(
    stream: FirebaseAuth.instance.authStateChanges(),
    builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      if(snapshot.hasData){
        return const Interest();
      }else {
        return const Begin();
      }

  },);
}



signInWithGoogle() async {
  final GoogleSignInAccount? googleUser = await GoogleSignIn(
    scopes: <String>["email"]
  ).signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
<<<<<<< HEAD
  return (await FirebaseAuth.instance.signInWithCredential(credential));
=======
  return (await FirebaseAuth.instance.signInWithCredential(credential)).user;
>>>>>>> 701e435fb1cb1b1afecbee561f6378fe81c08af1

}


singnOut(){
  FirebaseAuth.instance.signOut();
}


}
