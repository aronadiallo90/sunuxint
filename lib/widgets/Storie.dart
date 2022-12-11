import 'package:flutter/material.dart';

class Storie extends StatefulWidget {
  const Storie({Key? key}) : super(key: key);

  @override
  State<Storie> createState() => _StorieState();
}

class _StorieState extends State<Storie> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.all(35.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red
          ),
            child:  CircleAvatar(
              backgroundColor: Colors.white,
              child:Image.asset("assets/24-248253_user-profile-default-image-png-clipart-png-download.png"),
              ),

          ),
          const Text("Mamadou Diouf",style: TextStyle(fontFamily:"Arial sans serif"),)
        ],
      ),
    );
  }
}