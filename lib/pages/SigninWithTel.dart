import 'package:flutter/material.dart';
import 'package:untitled/pages/ConfirmTel.dart';
import 'package:untitled/pages/Signup.dart';

class SignWithTel extends StatefulWidget {
  const SignWithTel({Key? key}) : super(key: key);

  @override
  State<SignWithTel> createState() => _SignWithTelState();
}

class _SignWithTelState extends State<SignWithTel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Image.asset(
            "assets/91955-social-media-network.gif",
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 3,
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Center(
            child: Text(
              "SIGN-IN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.phone,
                color: Colors.black,
              ),
              hintText: "phone",
              labelText: "Enter your phone number",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.zero)),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ConfirmTel()));
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Signup()));
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
