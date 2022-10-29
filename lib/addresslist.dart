import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// College Location  fetch from DataBAse

class test extends StatefulWidget {
   String name1;
   test({required this.name1});


  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  Map<String,dynamic>? addresslist;
 void getdata_fromFireBase()async{
 final result=  await FirebaseFirestore.instance.collection('Collegename').where("id",isEqualTo: widget.name1).get().then((value) {
     setState(() {
       addresslist=value.docs[0].data();

     });
   });
 }

  @override
  Widget build(BuildContext context) {
   getdata_fromFireBase();

    return Scaffold(
      
      body:addresslist==null?Text("No Data"):
      Padding(
        padding: const EdgeInsets.only(left:8,bottom: 18.0),
        child: Container(

          height: 50,
          width:MediaQuery.of(context).size.width,
          decoration:
          BoxDecoration(
              color: Colors.white,

          )
          ,
          child: Padding(
            padding: const EdgeInsets.only(left:18.0),
            child: Row(
              children: [


                Icon(Icons.location_on),


                SizedBox( width: 5,),
                Text("${addresslist!['address']}"),
                SizedBox(
                  width:  10,
                ),

              ],
            ),
          ),

        ),
      ),
          
          

      
    );
  }
}
