import 'package:flutter/material.dart';

class NavPush extends StatelessWidget {
  const NavPush({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text("Dashboard"),
    actions: const [],
    ),
    body: Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          ElevatedButton(
            onPressed:(){
              Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context){
                    return const NavPush();
                }),
              );
            },
            child: const Text('go to next Page'),
            ),
        ],
        ), 
    ),
    );
  }
}