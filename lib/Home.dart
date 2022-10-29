import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:softbdltd/instute_name.dart';
import 'package:softbdltd/test.dart';

import 'collagename_getby _Alphabet.dart';



class Home extends StatefulWidget {
  const Home();

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();
   List<String> alphabetlist=[];
  // Map<String,dynamic> searchList;
  //
  int value = 0;
  String tex_t2 = "Ideal School and College ";
  void Ind_x(int a) {
    value = a;

    setState(() {
      value;
      
    });
  }
void initState() {
    // TODO: implement initState

    for(int i=65; i<=90; i++){
      alphabetlist.add(String.fromCharCode(i));
    }
    print(alphabetlist);
    super.initState();
  }
  void tex_t(String tex_t1) {
    tex_t2 = tex_t1;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("image/sh.jpg", fit: BoxFit.cover),
      ),
      body: SafeArea(
          
          child: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "Search",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30.0),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 13.0),
            child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width - 18.0,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 6.0, left: 10.0),
                  child:
                      
                      ListTile(
                   
                    title: TextFormField(
                      controller: _controller,
                      decoration: InputDecoration(
                          hintText: "Search By Instutitute Name",
                          border: InputBorder.none),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        tex_t(_controller.text);
                      },
                      icon: Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "Search By Letters",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20.0),
            ),
          ),
         
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              width: 220,
              height: 320,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemCount: alphabetlist.length,
                    itemBuilder: (BuildContext wr, index) {
                      return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: TextButton(
                            onPressed: () {
                              Ind_x(index);
                            },
                            child: Text(alphabetlist[index])),
                      );
                    }),
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "College List",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25.0),
              textAlign: TextAlign.start,
            ),
          ),

         
          Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 8.0,right: 8.0),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
              child: instute_name(

                 name1: tex_t2,

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0,right: 8.0),
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
              child:test(
                name1: tex_t2,
              ),
            ),
          ),
          Container(
            height: 1.0,
            width: 360.0,
            color: Colors.black12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1, 1),
                                blurRadius: 4)
                          ]),
                      child: Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Icon(
                            Icons.phone,
                            size: 16,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1, 1),
                                blurRadius: 4)
                          ]),
                      child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.whatsapp,
                            size: 16,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1, 1),
                                blurRadius: 4)
                          ]),
                      child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            IconData(0xe6a8, fontFamily: 'MaterialIcons'),
                            size: 16,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1, 1),
                                blurRadius: 4)
                          ]),
                      child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.chat,
                            size: 16,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(20)),
              child: collagename_getby_alphabet(
                alpha: alphabetlist[value],
              ),
            ),
          )
        ],
      )),
      drawer: Drawer(),
    );
  }
}
