import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth98/screens/excercise_screen.dart';
import 'package:firebase_auth98/screens/note_screen.dart';
import 'package:firebase_auth98/screens/stopwatch.dart';
import 'package:firebase_auth98/widgets/dashboard.dart';
import 'package:flutter/material.dart';

import '../screens/welcome_screen.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/login_back.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Dashboard();
            }))
              
            },
          ),
          ListTile(
            leading: Icon(Icons.sports),
            title: Text('Excercises'),
            onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ExcerciseScreen();
            }))
              
            },
          ),
          ListTile(
            leading: Icon(Icons.note),
            title: Text('Notes'),
            onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return NoteScreen();
            }))
              
            },
          ),
          ListTile(
            leading: Icon(Icons.watch),
            title: Text('Stopwatch'),
            onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Stopwatch();
            }))
              
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () async{
            await FirebaseAuth.instance.signOut();
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return WelcomeScreen();
            }));
          },
          ),
        ],
      ),
    );
  }
}