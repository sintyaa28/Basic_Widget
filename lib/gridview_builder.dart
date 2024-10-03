import 'package:flutter/material.dart';

class  letak extends StatelessWidget {
  final List<String> categories = ["laluli", 
  " lulali"];
   letak ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text("Dashboard"),
    actions: const [],
    ),
    body:Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 185/243,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: [
          ...List.generate(
            6, 
            (index) => Container(
              height: 300,
              width:  double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset.zero,
                    blurRadius: 10.0,
                  )
                ]
              ),
            )
            )
        ],
    ))
    );
  }
}