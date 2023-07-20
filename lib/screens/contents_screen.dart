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
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(text),
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
        backgroundColor: Color(0XffF7F2FA),
        child: ListView(
          padding: EdgeInsets.zero,

          children: <Widget>[
            SizedBox(
              height: 50,
              child: DrawerHeader(
                child: Text("Title"),

              ),
            ),
            ListBody(
              children: [
                ListTile(
                  title: Text("SectionHeader"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 7 ,
                    backgroundColor: Colors.black,
                  ),
                  title: Text("Label"),
                  trailing: Text("100+"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 7 ,
                    backgroundColor: Colors.black,
                  ),
                  title: Text("Label"),
                  trailing: Text("100+"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 7 ,
                    backgroundColor: Colors.black,
                  ),
                  title: Text("Label"),
                  trailing: Text("100+"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 7 ,
                    backgroundColor: Colors.black,
                  ),
                  title: Text("Label"),
                  trailing: Text("100+"),
                ),
                ListTile(
                  title: Text("SectionHeader"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 7 ,
                    backgroundColor: Colors.black,
                  ),
                  title: Text("Label"),
                  trailing: Text(""),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 7 ,
                    backgroundColor: Colors.black,
                  ),
                  title: Text("Label"),
                  trailing: Text(""),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 7 ,
                    backgroundColor: Colors.black,
                  ),
                  title: Text("Label"),
                  trailing: Text(""),
                ),
                ListTile(
                  title: Text("SectionHeader"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 7 ,
                    backgroundColor: Colors.black,
                  ),
                  title: Text("Label"),
                  trailing: Text(""),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 7 ,
                    backgroundColor: Colors.black,
                  ),
                  title: Text("Label"),
                  trailing: Text(""),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 7 ,
                    backgroundColor: Colors.black,
                  ),
                  title: Text("Label"),
                  trailing: Text(""),
                ),
              ],
            )
          ],
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