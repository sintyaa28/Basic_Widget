import 'package:flutter/material.dart';

class BawahJatuh extends StatefulWidget {
  BawahJatuh({super.key});

  @override
  _BawahJatuhState createState() => _BawahJatuhState();
}

class _BawahJatuhState extends State<BawahJatuh> {
  final List<String> dropdownList = [
    'Inggris', 'Indonesia', 'Francis'
  ];
  
  String? selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text("Dashboard"),
    actions: const [],
    ),
    body:Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const Text('Your Favorite Language :'),
      const SizedBox(
        width: 8,
      ),
      DropdownButton(
        value: selected,
        icon: const Icon(Icons.arrow_downward),
        iconSize: 20,
        style: TextStyle(color: Colors.blue[600]),
        underline: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 3
              )
            )
          ),
        ),
        items: dropdownList
        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
        .toList(),
        onChanged: (String? val) {
          setState(() {
            if (val != null) selected =val;
          });
        }
      )
    ],
    ),
    );
  }
}