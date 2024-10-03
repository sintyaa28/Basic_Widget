import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String? sex; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Row(
        children: [
          const Text('Gender:'),
          const SizedBox(width: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio<String>(
                value: 'male',
                groupValue: sex,
                onChanged: (String? val) {
                  setState(() {
                    if (val != null) {
                      sex = val;
                    }
                  });
                },
              ),
              const Text('Male'),
            ],
          ),
          const SizedBox(width: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio<String>(
                value: 'female',
                groupValue: sex,
                onChanged: (String? val) {
                  setState(() {
                    if (val != null) {
                      sex = val;
                    }
                  });
                },
              ),
              const Text('Female'),
            ],
          ),
        ],
      ),
    );
  }
}