import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:untitled/pages/Interest.dart';

class ConfirmTel extends StatefulWidget {
  const ConfirmTel({Key? key}) : super(key: key);

  @override
  State<ConfirmTel> createState() => _ConfirmTelState();
}

class _ConfirmTelState extends State<ConfirmTel> {
 TextEditingController newTextEditingController = TextEditingController();
 FocusNode focusNode = FocusNode();

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
        PinCodeFields(
                  length: 4,
                  controller: newTextEditingController,
                  focusNode: focusNode,
                  onComplete: (result) {
                    // Your logic with code
                    print(result);
                  },
                ),
          const SizedBox(
            height: 15.0,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: ElevatedButton(
                onPressed: () {
                 // Navigator.push(context,
                  //    MaterialPageRoute(builder: (context) => const Interest()));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    fixedSize: MaterialStateProperty.all(
                        MediaQuery.of(context).size / 9)),
                child: const Text(
                  "confirmer",
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
