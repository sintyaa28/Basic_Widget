import 'package:flutter/material.dart';

class LLPembangun extends StatelessWidget {
  final List<String> catagories =["ayam", "bebek", "angsa"];
  LLPembangun({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
   appBar: AppBar(
   title: const Text("Dashboard"),
   actions: const [],
   ),
   body: SingleChildScrollView(
   child: Container(
    height: 150,
   padding: const EdgeInsets.all(20.0),
   child: ListView.builder(
    itemCount: catagories.length,
    itemBuilder: (context, index){
      return GestureDetector(
        onTap: () {},
        child: AnimatedContainer(duration: const Duration (milliseconds: 150),
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         color: Colors.grey,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 24,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 2,
          vertical: 2,
        ),
        child: Text(
          catagories[index],
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
        ),
        ),
      );
    },
   )
   ),
   ),
   );
  }
}