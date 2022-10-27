import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class instute_name extends StatefulWidget {
  String name1;
  instute_name({required this.name1});

  @override
  State<instute_name> createState() => _instute_nameState();
}

class _instute_nameState extends State<instute_name> {
  Map<String,dynamic>? addresslist;
  void getdata_fromFireBase()async{
    final result=  await FirebaseFirestore.instance.collection('Collegename').where("id",isEqualTo: widget.name1).get().then((value) {
      setState(() {
        addresslist=value.docs[0].data();
        print(addresslist);
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    getdata_fromFireBase();
    return Scaffold(

      body:addresslist==null?Text("No Data"):
      Container(

        height: 80,
        width:MediaQuery.of(context).size.width,
        decoration:
        BoxDecoration(
            color: Colors.white,

            )
        ,
        child: Padding(
          padding: const EdgeInsets.only(left:8.0,right: 8.0),
          child: Row(
            children: [


          Image.network(
             '${addresslist!['image']}',
             height: 30,
            width: 20,
           ),

              SizedBox( width: 5,),
              Text("${addresslist!['name']}",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),),
              SizedBox(
                width:  10,
              ),

            ],
          ),
        ),

      ),




    );
  }
}
