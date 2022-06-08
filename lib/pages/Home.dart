import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smedia/pages/createscreen.dart';
import 'package:smedia/pages/postscreen.dart';
import 'package:smedia/pages/user.dart';
import 'package:smedia/providers/post_provider.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> _screens = [PostScreen(), CreateScreen(), User()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smedia'),
      ),
      body: _screens[_selectedIndex],
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
              icon: const Icon(Icons.post_add_rounded),
              label: 'Posts',
              backgroundColor: Colors.blue),

          BottomNavigationBarItem(
              icon: const Icon(Icons.create),
              label: 'Create',
              backgroundColor: Colors.blue),

          BottomNavigationBarItem(
              icon: const Icon(Icons.verified_user),
              label: 'Users',
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
