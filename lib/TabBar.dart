import 'package:flutter/material.dart';

class Sabar extends StatefulWidget {
  const Sabar({super.key});

  @override
  _SabarState createState() => _SabarState();
}

class _SabarState extends State<Sabar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose(); // Clean up the controller when the widget is disposed.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text("Binar_Tabbar"),
      bottom: TabBar(
        tabs: const [
          Tab(
            icon: Icon(Icons.directions_boat),
          ),
          Tab(
            icon: Icon(Icons.directions_bus),
          ),
          Tab(
            icon: Icon(Icons.directions_ferry),
          ),
        ]
      ),
    ),
    body: TabBarView(
      controller: _tabController, 
      children: const [
        Center(
          child: Text('Tab 1'),
        ),
        Center(
          child: Text('Tab 2'),
        ),
        Center(
          child: Text('Tab 3'),
        )
      ],
    ),
    
    );
  }
}