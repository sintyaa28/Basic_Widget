import 'package:flutter/material.dart';

class kotakCheck extends StatefulWidget {
  const  kotakCheck({super.key});

  @override
  _KotakCheckState createState() => _KotakCheckState();
}

class _KotakCheckState extends State<kotakCheck> {
  bool isChecked = false; // Initialize checkbox state


  @override
  Widget build(BuildContext context) {
   return Scaffold(
   appBar: AppBar(
   title: const Text("Dashboard"),
   actions: const [],
   ),
   body:
   Row(
    children: [
      Checkbox(
       value: isChecked,
       activeColor: Colors.blue, 
       onChanged: (val){
        setState ((){
          isChecked = val ?? false;
        });
       }
      ),
     const SizedBox(width: 4,),
     const Text(
      'Agree Term & Conditions',
      style: TextStyle(
        decoration: TextDecoration.underline,
      ),
     ) 
   ],
   )
   );
  }
}