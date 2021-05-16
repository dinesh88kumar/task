import 'package:flutter/material.dart';
import 'package:task/home.dart';
import 'package:task/profile.dart';
import 'package:task/vide.dart';
import 'package:task/videos.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  List<Widget> list = [Home(), Videos(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: list[index],
        drawer: Mydrawer(
          ontap: (context, i) {
            setState(() {
              index = i;
              Navigator.pop(context);
            });
          },
        ));
  }
}

class Mydrawer extends StatefulWidget {
  final Function ontap;
  Mydrawer({this.ontap});
  @override
  _MydrawerState createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('don affleck'),
              accountEmail: Text('xxxxlmo@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text(
                  'A',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () => widget.ontap(context, 0)),
            ListTile(
                leading: Icon(Icons.play_arrow),
                title: Text("Videos"),
                onTap: () => widget.ontap(context, 1)),
            ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Profile"),
                onTap: () => widget.ontap(context, 2)),
          ],
        ),
      ),
    );
  }
}
