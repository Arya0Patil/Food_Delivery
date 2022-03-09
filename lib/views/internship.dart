import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecom101/sevices/managedata.dart';
import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'TO DO App',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Type something here..',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)))),
                    ),
                  ),
                  IconButton(
                    splashColor: Colors.red,
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                    ),
                    iconSize: 30,
                  )
                ],
              ),
              TaskList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget TaskList() {
    return Container(
        child: StreamBuilder(
      stream: FirebaseFirestore.instance.collection('Shakes').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView(
              children: snapshot.data.docs.map<Widget>((doc) {
            return Card(
              child: ListTile(
                title: Text(doc['name']),
              ),
            );
          }).toList());
        } else {
          return Card(child: Text("No data"));
        }
      },
    ));
  }
}
