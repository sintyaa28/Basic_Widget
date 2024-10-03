import 'package:flutter/material.dart';

class Lemari extends StatelessWidget {
  const Lemari({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Container(
                color: Colors.blue[100],
                child: const UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    child: FlutterLogo(size: 50),
                  ),
                  decoration: BoxDecoration(color: Colors.grey),
                  accountName: Text(
                    'Sabrina.dev@gmail.com',
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    'sabrina.dev@gmail.com',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Menu 1'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Menu 2'),
                onTap: () {
                  // Action for Menu 2
                  Navigator.of(context).pop(); // Close drawer after tapping
                },
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text('Main Content Area'), // Placeholder for the main content
      ),
    );
  }
}