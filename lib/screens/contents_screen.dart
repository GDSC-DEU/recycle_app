import 'package:flutter/material.dart';

import 'package:recycle_app/components/contents_list_component.dart';
import 'package:recycle_app/components/drawer_component.dart';

class ContentsScreen extends StatefulWidget {
  final String text;

  const ContentsScreen({
    super.key,
    required this.text,
  });

  @override
  _ContentsScreenState createState() => _ContentsScreenState();
}

class _ContentsScreenState extends State<ContentsScreen> {
  int _selectedIndex = 0;
  List<String> _titles = ['Home', 'Activite', 'Setting'];
  List<Widget> _screens = [
    Text('Home Screen'),
    ContentsListComponent(),
    Text('Setting Screen'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(_titles[_selectedIndex]),
        centerTitle: true,
        elevation: 0,
        actions: const [
          IconButton(
              icon: Icon(Icons.account_circle, color: Colors.black,),
              onPressed: null, iconSize: 30
          )
        ],
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 22,
        ),
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        backgroundColor: Colors.purple.shade50,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            SizedBox(
              height: 50,
              child: DrawerHeader(
                child: Text("Title"),
              ),
            ),
            DrawerComponent(),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.recycling),
                label: 'Activite'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Setting'
            ),
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          backgroundColor: Colors.purple.shade50,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
