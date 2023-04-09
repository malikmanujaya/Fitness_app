import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth98/screens/note_editor.dart';
import 'package:firebase_auth98/screens/excercise_reader.dart';
import 'package:firebase_auth98/style/app_style.dart';
import 'package:firebase_auth98/widgets/excercise_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExcerciseScreen extends StatefulWidget{
  const ExcerciseScreen({Key? key}) : super(key: key);

  @override
  State<ExcerciseScreen> createState() => _ExcerciseScreenState();
}

class _ExcerciseScreenState extends State<ExcerciseScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Excercises"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("All Excercises",
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,

            ),
            ),
            SizedBox(
              height: 20.0,
            ),
            

             Expanded(
               child: StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance.collection("Excercises").snapshots(),
                    builder: (context,AsyncSnapshot<QuerySnapshot> snapshot){
                      if(snapshot.connectionState == ConnectionState.waiting){
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if(snapshot.hasData){
                        return GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,childAspectRatio: 1.5,
                        ),
                        children: snapshot.data!.docs.map((excercises) => noteCard((){
                         Navigator.push(context,MaterialPageRoute(builder: (context) => 
                         ExcerciseReaderScreen(excercises),
                         ));
                        }, excercises)).toList(),
                        );
             //                       return GridView(
             //                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             // crossAxisCount: 2
             //                       ),
             //                       // children: snapshot.data!.docs.map((note) => noteCard((){}, note)).toList(),
             //                       );
                      }
                          return Text("There is no notes",style: GoogleFonts.nunito(color: Colors.white),);
             
                    },
                  
                
                         ),
             )
          ],

        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: (){
      //     // Navigator.push(context, MaterialPageRoute(builder: (context)=> ExcerciseEditorScreen()));
      //   }, 
      //   label: Text("Add Excericise"),
      // icon: Icon(Icons.add),
      // ),
    );
  }
}