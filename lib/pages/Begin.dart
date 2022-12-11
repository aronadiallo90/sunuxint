import 'package:flutter/material.dart';
import 'package:untitled/pages/Begin2.dart';

class Begin extends StatefulWidget {
  const Begin({Key? key}) : super(key: key);

  @override
  State<Begin> createState() => _BeginState();
}

class _BeginState extends State<Begin> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Image.asset(
            "assets/89125-discussion.gif",
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 2,
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Center(
            child: Text(
              "WELCOME TO SUNUXINT",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
           const SizedBox(
            height: 10.0,
          ),
          const Center(child: Text("The polytechnician app to share ")),
          const Center(child: Text("about ingeneering")),
          const SizedBox(
            height: 50.0,
          ),
          
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Begin2()));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    fixedSize: MaterialStateProperty.all(
                        MediaQuery.of(context).size / 9)),
                child: const Text(
                  "continue",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}