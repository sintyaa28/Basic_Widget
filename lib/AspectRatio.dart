import 'package:flutter/material.dart';

class Rasio extends StatelessWidget {
  const Rasio({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
   appBar: AppBar(
   title: const Text("Dashboard"),
   actions: const [],
   ), 
   
   body:Center(
    child: AspectRatio(
     aspectRatio: 16/9,
     child: Image.asset('asset/download (1).jpg'),

     ),
    )
   );
  }
}