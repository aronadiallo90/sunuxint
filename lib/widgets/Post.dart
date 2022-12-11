import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
         Container(
           color: Colors.white,
           child: SingleChildScrollView(
             scrollDirection: Axis.vertical
             ,
             child: Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.spaceAround,


               children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Image.asset("assets/24-248253_user-profile-default-image-png-clipart-png-download.png"),
                ),
                Text("Abdoulaye Ba"),
                SizedBox(width: 0.0,),
                Icon(Icons.view_headline)
              ],
        ),
           ),
         ),

      ],
    );
  }
}
