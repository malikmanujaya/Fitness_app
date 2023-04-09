import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth98/style/app_style.dart';
import 'package:flutter/material.dart';

class ExcerciseReaderScreen extends StatefulWidget{
   ExcerciseReaderScreen(this.doc,{Key? key}) : super(key: key);

QueryDocumentSnapshot doc; 
  @override
  State<ExcerciseReaderScreen> createState() => _ExcerciseReaderScreenState();

}

class _ExcerciseReaderScreenState extends State<ExcerciseReaderScreen>{
    @override
    Widget build(BuildContext context){
        int excercise_id = widget.doc['excercise_id'];
      return Scaffold(
        backgroundColor: AppStyle.cardsColor[excercise_id],
        appBar: AppBar(
          backgroundColor: AppStyle.cardsColor[excercise_id],
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.doc["name"],
              style: AppStyle.mainTitle,
            ),
            SizedBox(height: 4.0,),
            
            Text(
              widget.doc["description"],
              style: AppStyle.dateTitle,
            ),
            SizedBox(height: 28.0,),
        
             Text(
              widget.doc["time"],
              style: AppStyle.mainContent,
              // overflow: TextOverflow.ellipsis,
            ),
          ],
              ),
        ),

      );
    }

}