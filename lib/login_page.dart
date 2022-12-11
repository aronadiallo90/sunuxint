import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:untitled/auth_service.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(

        body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Container(
                width:MediaQuery.of(context).size.width/1.5,
                height:MediaQuery.of(context).size.height/2,
                child: Card(
                  child: Image.asset("images/sociale.gif"),
                  elevation: 0,
                ),
              ),
            ),
            Text("SIGN-UP",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: MediaQuery.of(context).size.width/2,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border:OutlineInputBorder(),
                        labelText: 'Email',
                        suffixIcon: Icon(Icons.email_outlined)
                    ),
                  ),
                  SizedBox(height: 25,),
                  TextField(
                    decoration: InputDecoration(
                        border:OutlineInputBorder(),
                        labelText: 'Password',
                        suffixIcon: Icon(Icons.password_outlined)
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: const Text('SIGN-UP'),
                  ),
                  SizedBox(height: 25,),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      AuthService().signInWithGoogle();
                    },
                    child: const Text('SIGN-IN'),
                  )
                ],
              ),
            )
          ],
        )
       ),
    );
  }
}
