import 'package:firebase_auth98/screens/const.dart';
import 'package:firebase_auth98/screens/excercise_screen.dart';
import 'package:firebase_auth98/screens/excercises_home.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
        
        ),
      body: Column(
        children: [
          
          SizedBox(
            height: size.height / 25,
          ),
          
          Container(
            height: size.height / 1.65,
            width: size.width,
            decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/login-back-new.jpg'),
          fit: BoxFit.fill,
        ),
        
      ),
            // decoration: BoxDecoration(
              
            //   image: DecorationImage(
            //     image: AssetImage("assets/1.png"),
                
            //     fit: BoxFit.cover,
            //   ),
            // ),
     
          ),
          
          // Image(image: AssetImage('assets/1.png')),
          SizedBox(
            height: size.height / 30,
          ),
          Container(
            width: size.width / 1.15,
            child: Text(
              "Never give up",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              width: size.width / 1.15,
              child: Text(
                "Work hard",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Container(
            width: size.width / 1.15,
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ExcerciseScreen())),
              child: Container(
                height: size.height / 15,
                width: size.height / 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
