import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width/10,
      height: 12,
      child: const TextField(
        decoration: InputDecoration(
          
          hintText: "Rechercher",
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search, color: Colors.black),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          hintStyle: TextStyle(color: Colors.black38),
        ),
      ),
    );
  }
}
