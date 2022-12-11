import 'package:flutter/material.dart';
import 'package:untitled/widgets/Post.dart';
import 'package:untitled/widgets/Storie.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/auth_service.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("sunuxint"),
        actions: [

        const SizedBox(width:35),
          InkWell(
            onTap: (){},
            child: Icon(Icons.search),
          ),
          const SizedBox(width:35),
          InkWell(
            onTap: (){
              AuthService().singnOut();
            },
            child: Icon(Icons.exit_to_app),
          )

        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Image.asset("assets/24-248253_user-profile-default-image-png-clipart-png-download.png"),
          ),
           Center(
              child: Text(
                FirebaseAuth.instance.currentUser!.displayName!,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
           Center(
              child: Text(
                FirebaseAuth.instance.currentUser!.email!,
            style: TextStyle(fontSize: 15),
          )),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Mon profile"),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.meeting_room),
            title: const Text("Communauté"),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.post_add),
            title: const Text("Mes posts"),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.video_camera_back_outlined),
            title: const Text("Reels"),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.sms),
            title: const Text("Messages"),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.forum),
            title: const Text("Forums"),
          ),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_camera_back)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sms),
          ),
          InkWell(
            onTap: () {},
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 15,
              child: Icon(Icons.add_a_photo_rounded),
            ),
          )
        ]),
      ),
      body:

         Column(children: [
           Text(
             "Stories",
             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
           ),          Container(
            color: Colors.white,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(children: const [
                Storie(),
                Storie(),
                Storie(),
                Storie(),
                  Storie(),



                ]),
            ),
          ),
          SizedBox(height: 10.0,),
           Text(
             "Posts",
             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
           ),

         ]),)
      );

  }
}
