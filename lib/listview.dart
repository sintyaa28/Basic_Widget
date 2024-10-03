import 'package:flutter/material.dart';

class listLihat extends StatelessWidget {
  final List<String> cetagories =[
    "ayam",
    "bebek",
    "angsa",
    "keluarga burung"
  ];

   listLihat({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
   appBar: AppBar(
   title: const Text("Dashboard"),
   backgroundColor: Colors.purple,
   actions: const [],
   ),
   body: SingleChildScrollView(
   child: Container(
    height: 120,
   padding:  EdgeInsets.all(20.0),
   child: ListView(
    scrollDirection: Axis.horizontal,
   children: List.generate(cetagories.length, (index) {
    return GestureDetector(
      onTap: () {},
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 24,
        ),
        margin: EdgeInsets.symmetric(horizontal: 2),
        child: Text(
          cetagories[index],
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            letterSpacing: 1
          ),


        ),
        ),
    );
   }
   ),
   ),
   ),
   ),
   );
  }
}