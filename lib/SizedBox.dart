import 'package:flutter/material.dart';

class BoxUkur extends StatelessWidget {
  const BoxUkur({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
   appBar: AppBar(
   title: const Text("Dashboard"),
   actions: const [],
   ),
   body: SingleChildScrollView(
   child: Container(
   padding: const EdgeInsets.all(20.0),
   child: const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
   children: [
    Text(
      "Size",
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    SizedBox( height: 4.0,),
    Text(
      "Height 120 cm",
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.grey,
        fontWeight: FontWeight.normal
      ),
    ),
    SizedBox(height: 2.0,),
    Text(
      "Widht 80 cm",
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.grey,
        fontWeight: FontWeight.normal,
      ),
    )

   ],
   ),
   ),
   ),
   );
  }
}