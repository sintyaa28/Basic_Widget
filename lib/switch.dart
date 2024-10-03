
import 'package:flutter/material.dart';

class Balik extends StatefulWidget {
  const Balik({super.key});

  @override
  _BalikState createState() => _BalikState();
}

class _BalikState extends State<Balik> {
  bool isOn = false;
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
   appBar: AppBar(
   title: const Text("Dashboard"),
   actions: const [],
   ),
   body: Row(
    children: [
      const Text('Connect Instagram'),
      const SizedBox(
        width: 8,
      ),
      Switch(value: isOn, 
      onChanged: (bool? val) {
        if (val != null) {
          setState ((){
            isOn = val;
          });
          
        }
      }
      )
    ],
   )
   );
  }
}
