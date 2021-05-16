import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: [
        SizedBox(height: 20),
        Center(
          child: CircleAvatar(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.red,
            backgroundImage: AssetImage('assets/images/f.jpg'),
            radius: 70,
          ),
        ),
        SizedBox(height: 10),
        Center(
            child: Text(
          'Don Affleck',
          style: TextStyle(fontWeight: FontWeight.w200, color: Colors.orange),
        )),
        SizedBox(height: 10),
        Center(
            child: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.orange),
        )),
        SizedBox(height: 25),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Location',
                      style: TextStyle(color: Colors.grey),
                    )),
                Container(
                  height: 30,
                  child: TextField(
                      //  decoration: InputDecoration(labelText: 'name'),
                      ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Card(
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Pincode',
                      style: TextStyle(color: Colors.grey),
                    )),
                Container(
                  height: 30,
                  child: TextField(
                      //  decoration: InputDecoration(labelText: 'name'),
                      ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Card(
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'DOB',
                      style: TextStyle(color: Colors.grey),
                    )),
                Container(
                  height: 30,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'dd-mm-yyyy',
                        labelStyle:
                            TextStyle(fontSize: 10, color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Card(
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Gender',
                      style: TextStyle(color: Colors.grey),
                    )),
                Container(
                  height: 30,
                  child: TextField(
                      //  decoration: InputDecoration(labelText: 'name'),
                      ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Card(
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'whatsapp',
                      style: TextStyle(color: Colors.grey),
                    )),
                Container(
                  height: 30,
                  child: TextField(
                      //  decoration: InputDecoration(labelText: 'name'),
                      ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Card(
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(color: Colors.grey),
                    )),
                Container(
                  height: 30,
                  child: TextField(
                      //  decoration: InputDecoration(labelText: 'name'),
                      ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(left: 50, right: 50, top: 20),
          child: MaterialButton(
            onPressed: () {},
            child: Text(
              'Save',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.pink,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
          ),
        )
      ],
    )));
  }
}
