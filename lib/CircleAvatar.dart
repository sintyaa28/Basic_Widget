import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
  ];
  Circle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("simple code"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
            "https://i.ibb.co/PGv8ZzG/me.jpg",
          ),
          ),
          Row(
            children: [
              ...List.generate(
                colors.length,
                (index) => CircleAvatar(
                  radius: 40,
                  backgroundColor: colors[index],
                ),
              ),
            ],
          )
        ],
        ),
      ),
    );
  }
}