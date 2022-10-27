import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class collagename_getby_alphabet extends StatefulWidget {
  String  alpha;
  collagename_getby_alphabet( {required this.alpha});


  @override
  State<collagename_getby_alphabet> createState() => _collagename_getby_alphabetState();
}

class _collagename_getby_alphabetState extends State<collagename_getby_alphabet> {
  Map<String,dynamic>? searchList;



  void searchFromFirebase() async {
    final result = await FirebaseFirestore.instance
        .collection('Collegename')
        .where("id", isEqualTo:widget.alpha).get().then((value) {
      setState(() {
        searchList = value.docs[0].data();

      });
    });

  }


  @override
  Widget build(BuildContext context) {
 searchFromFirebase();


    return Scaffold(
      body:
         searchList==null?Text("No Data"):



         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(

             height: 80,
             width:MediaQuery.of(context).size.width,
             decoration:
             BoxDecoration(
                 color: Colors.white,
                    borderRadius: BorderRadius.circular(20))
             ,
             child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 8.0),
                   child: Image.network(searchList!['image'],height: 50,),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 18.0),
                   child: Text("${searchList?['name']}",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),),
                 ),


               ],
             ),

             ),
           ),










    );
  }
}
