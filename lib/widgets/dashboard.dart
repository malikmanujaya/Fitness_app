import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_auth98/screens/bmi_cal.dart';
// import 'package:firebase_auth98/screens/bmi_result_screen.dart';
import 'package:firebase_auth98/screens/bmi_screen.dart';
import 'package:firebase_auth98/screens/note_screen.dart';
import 'package:firebase_auth98/screens/started.dart';
import 'package:firebase_auth98/screens/stopwatch.dart';
import 'package:firebase_auth98/widgets/navDrawer.dart';
import 'package:flutter/material.dart';



class Dashboard extends StatelessWidget {
  final String? userNickName = FirebaseAuth.instance.currentUser!.email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Welcome, $userNickName",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(
                  spacing:20,
                  runSpacing: 20.0,
                  children: <Widget>[
                    SizedBox(
                      width:160.0,
                      height: 160.0,
                      child: InkWell(
                         onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> GetStarted()));
        },
                        child: Card(
                      
                          color: Color.fromARGB(255,21, 21, 21),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          child:Center(
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Column(
                              children: <Widget>[
                               Image(image: AssetImage('assets/exercises.png'), width: 52.0),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "Excercises",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0
                                  ),
                                ),
                               
                              ],
                              ),
                            )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width:160.0,
                      height: 160.0,
                      child: InkWell(
                                             onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> NoteScreen()));
        },
                        child: Card(
                      
                          color: Color.fromARGB(255,21, 21, 21),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                          ),
                          child:Center(
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Column(
                                  children: <Widget>[
                                    Image(image: AssetImage('assets/notes.png'), width: 52.0),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "Notes",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0
                                      ),
                                    ),
                                   
                                  ],
                                ),
                              )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width:160.0,
                      height: 160.0,
                      child: InkWell(
                        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Stopwatch()));
        },
                        child: Card(
                      
                          color: Color.fromARGB(255,21, 21, 21),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                          ),
                          child:Center(
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Column(
                                  children: <Widget>[
                                   Image(image: AssetImage('assets/stopwatch.png'), width: 52.0),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "Stopwatch",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19.0
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      
                      width:160.0,
                      height: 160.0,
                      child: InkWell(
                                   onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> BMI_Screen()));
        },
                        child: Card(
                                   
                      
                          color: Color.fromARGB(255,21, 21, 21),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                          ),
                          child:Center(
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Column(
                                  children: <Widget>[
                                    Image(image: AssetImage('assets/bmi.png'), width: 52.0),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "BMI Cal",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      )
    );
  }
}