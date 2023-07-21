import 'package:flutter/material.dart';

//import 'package:recycle_app/layouts/intro_layout.dart';

class DrawerComponent extends StatefulWidget {
  const DrawerComponent({ super.key });

  @override
  State<DrawerComponent> createState() => _StateDrawerComponent();
}

class _StateDrawerComponent extends State<DrawerComponent> {
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return const ListBody(
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
    );
  }
}