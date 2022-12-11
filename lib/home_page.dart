import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/cupertino.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text(
              FirebaseAuth.instance.currentUser!.displayName!,
              style: const TextStyle(
                fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black87
              ),

            ),
            const SizedBox( height: 30,),


            Text(
              FirebaseAuth.instance.currentUser!.email!,
              style: const TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black87
              ),

            ),
            const SizedBox( height: 10,),

           // MaterialButton(onPressed: onPressed,
             // padding: const EdgeInsets.all(10),
              //color: Colors.green,
              //shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5) ),
            //)
          ],
        ),
      ),
    );
  }
}
