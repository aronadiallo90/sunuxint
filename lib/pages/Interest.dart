import 'package:flutter/material.dart';
import 'package:untitled/widgets/Acceuil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/cupertino.dart';


class Interest extends StatefulWidget {
  const Interest({Key? key}) : super(key: key);

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        const Center(
            child: Text(
          "Welcome",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        )),
        const SizedBox(
          height: 5.0,
        ),
         Center(child: Text(FirebaseAuth.instance.currentUser!.displayName!)),
        const SizedBox(
          height: 15.0,
        ),
        const Center(child: Text("Choose your interests")),
        const SizedBox(
          height: 5.0,
        ),
        const Center(
            child: Text(
          "you can choose as many you want",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        Center(
          child: Container(
            color: const Color.fromARGB(255, 222, 219, 219),
            child: SingleChildScrollView(
              child: Column(
                children: [
                   const SizedBox(
                    height: 10.0,
                  ),
                  SingleChildScrollView(
                    child: Row(
                      children: [
                           const SizedBox(
                          width: 55.0,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Image.asset("assets/images-4.jpeg"),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Image.asset("assets/images-4.jpeg"),
                        ),
                           const SizedBox(
                          width: 35.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SingleChildScrollView(
                    child: Row(
                      children: [
                          const SizedBox(
                          width: 55.0,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Image.asset("assets/images-4.jpeg"),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Image.asset("assets/images-4.jpeg"),
                        ),
                          const SizedBox(
                          width: 35.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SingleChildScrollView(
                    child: Row(
                      children: [
                          const SizedBox(
                          width: 55.0,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Image.asset("assets/images-4.jpeg"),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Image.asset("assets/images-4.jpeg"),
                        ),
                          const SizedBox(
                          width: 35.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
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
                  MaterialPageRoute(builder: (context) => const Acceuil()));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    fixedSize: MaterialStateProperty.all(
                        MediaQuery.of(context).size / 9)),
                
                child: const Text(
                  "continue",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),)
        )
      ]
      
      ),
    );
  }
}
