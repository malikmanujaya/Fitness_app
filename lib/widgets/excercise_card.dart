import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth98/style/app_style.dart';
import 'package:flutter/material.dart';

Widget noteCard(Function()? onTap,QueryDocumentSnapshot doc){
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppStyle.cardsColor[doc['excercise_id']],
        borderRadius: BorderRadius.circular(8.0),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc["name"],
            style: AppStyle.mainTitle,
          ),
          SizedBox(height: 4.0,),
          
          Text(
            doc["description"],
            style: AppStyle.dateTitle,
          ),
          SizedBox(height: 126.0,),

           Text(
            doc["time"],
            style: AppStyle.mainContent,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}