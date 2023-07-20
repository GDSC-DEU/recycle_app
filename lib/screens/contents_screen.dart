import 'package:flutter/material.dart';

import 'package:recycle_app/components/contents_list_component.dart';

class ContentsScreen extends StatelessWidget {
  //int _selectedIndex = 0;
  final String text;

  const ContentsScreen({
    super.key,
    required this.text
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight((65.0)),
        child:  AppBar(
          title: Text(text),
          leading: const IconButton(icon: Icon(Icons.menu), onPressed: null, iconSize: 30,),
          actions: const [
            IconButton(icon: Icon(Icons.account_circle), onPressed: null, iconSize: 30, color: Colors.black,),
          ],
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      body: ContentsListComponent(),
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
          backgroundColor: Color(0xffF7F2FA),
        ),
      ),
    );
  }
}