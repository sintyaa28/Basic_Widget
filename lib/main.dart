import 'package:flutter/material.dart';

import 'package:project_tester/container.dart';
import 'package:project_tester/row.dart';
import 'package:project_tester/text.dart';
import 'package:project_tester/icon.dart';
import 'package:project_tester/CircleAvatar.dart';
import 'package:project_tester/column.dart';
import 'package:project_tester/listview.dart';
import 'package:project_tester/listview_builder.dart';
import 'package:project_tester/gridview_builder.dart';
import 'package:project_tester/stack.dart';
import 'package:project_tester/padding.dart';
import 'package:project_tester/AspectRatio.dart';
import 'package:project_tester/center.dart';
import 'package:project_tester/expanded.dart';
import 'package:project_tester/sizedbox.dart';
import 'package:project_tester/wrap.dart';
import 'package:project_tester/TextField.dart';
import 'package:project_tester/Dropdown.dart';
import 'package:project_tester/switch.dart';
import 'package:project_tester/radio.dart';
import 'package:project_tester/Checkbox.dart';
import 'package:project_tester/DatePicker.dart';
import 'package:project_tester/Dialog.dart';
import 'package:project_tester/BottomSheet.dart';
import 'package:project_tester/Snackbar.dart';
import 'package:project_tester/Navigationpush.dart';
import 'package:project_tester/Navigationpop.dart';
import 'package:project_tester/BotNavBar.dart';
import 'package:project_tester/TabBar.dart';
import 'package:project_tester/Drawer.dart';
import 'package:project_tester/SliverAppBar.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, 
      ),
      home: text(),
        
      );
  }
}
