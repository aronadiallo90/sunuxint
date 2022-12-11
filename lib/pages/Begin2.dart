import 'package:flutter/material.dart';
import 'package:untitled/pages/Signin.dart';
import 'package:untitled/pages/SigninWithTel.dart';

import '../auth_service.dart';

class Begin2 extends StatefulWidget {
  const Begin2({Key? key}) : super(key: key);

  @override
  State<Begin2> createState() => _Begin2State();
}

class _Begin2State extends State<Begin2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Image.asset(
            "assets/31821-share-everythin-moneybooks.gif",
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 2,
          ),
          const SizedBox(
            height: 2.0,
          ),
          const Center(
            child: Text(
              "Share,learn and ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          const Center(child: Text("exchange with the",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0))),
          const Center(child: Text(" polytechnician community",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0))),
          const SizedBox(
            height: 10.0,
          ),
          const Center(child: Text("The polytechnician app to share ")),
          const Center(child: Text("about ingeneering")),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height:MediaQuery.of(context).size.height / 12 ,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignWithTel()));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    fixedSize: MaterialStateProperty.all(
                        MediaQuery.of(context).size / 9)),
                child: Center(
                  child: const Text(
                    "login with phone",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height:10.0),
           Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height:MediaQuery.of(context).size.height / 12 ,
              child: ElevatedButton(
                onPressed: () {
                  AuthService().signInWithGoogle();

                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    fixedSize: MaterialStateProperty.all(
                        MediaQuery.of(context).size / 9)),
                
                child: const Text(
                  "login with email",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
            ),
          ),
          const SizedBox(height:15.0),
        ],
      ),
    );
  }
}
