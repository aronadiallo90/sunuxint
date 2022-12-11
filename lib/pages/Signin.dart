import 'package:flutter/material.dart';
import 'package:untitled/pages/Signup.dart';

import '../auth_service.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Image.asset("assets/91955-social-media-network.gif",width:MediaQuery.of(context).size.width/3,height:MediaQuery.of(context).size.height/3,),
                    const SizedBox(height: 15.0,),

          const Center(
            child: Text(
              "SIGN-IN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          const SizedBox(height: 15.0,),
          const TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.email_outlined,
                color: Colors.black,
              ),
              hintText: "email",
              labelText: "Enter your email",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.zero)),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            child: const TextField(
                decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.password_outlined,
                color: Colors.black,
              ),
              hintText: "password",
              labelText: "password",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.zero),
              ),
            )),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    fixedSize: MaterialStateProperty.all(
                        MediaQuery.of(context).size / 9)),
                child: const Text(
                  "SIGN-IN",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: ElevatedButton(
                onPressed: () {

                },
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                      MediaQuery.of(context).size / 9),
                  backgroundColor: MaterialStateProperty.all(Colors.grey),
                ),
                child: const Text(
                  "SIGN-UP",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
