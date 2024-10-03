import 'package:flutter/material.dart';

class pilihTanggal extends StatelessWidget {
  const pilihTanggal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text("Dashboard"),
    actions: const [],
    ),
    body: 
    InkWell(
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context, 
          initialDate: DateTime.now(),
          firstDate: DateTime(2000), 
          lastDate: DateTime(2100)
          );
          debugPrint ("pickeddate: $pickedDate");
      },
      child: TextFormField(
        initialValue: '2024-09-27',
        maxLength: 20,
        enabled: false,
        decoration: const InputDecoration(
          labelText: 'Birth Date',
          labelStyle: TextStyle(
            color: Colors.blueGrey,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueGrey,
            ),
          ),
          suffixIcon: Icon(Icons.date_range),
          helperText: "What's Your Birth Date?",
        ),
        onChanged: (value) {},
      ),
      )
    );
  }
}