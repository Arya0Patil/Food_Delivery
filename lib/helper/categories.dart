import 'package:ecom101/JamtaKya.dart';
import 'package:ecom101/views/internship.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 5),
              child: Text("Categories",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4rWztsKAGRee3988JPUJLRXK5u70e4b4ZSS2DBUj3faZazObQucGgKa-yvvUKvYcMjxk&usqp=CAU',
                          )),
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.fromLTRB(5, 10, 0, 5),
                  height: 100,
                  width: 165,
                  //color: Colors.red,
                  child: Card(
                      color: Colors.yellow[50],
                      child: Center(
                        child: Text(
                          "Meals",
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      )),
                )),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => TodoApp()));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLl_KI5FJYeCZZInHB5sJsjf2Om6-gix4BTg&usqp=CAU',
                          )),
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.fromLTRB(5, 10, 0, 5),
                  height: 100,
                  width: 165,
                  //color: Colors.red,
                  child: Card(
                      color: Colors.yellow[50],
                      child: Center(
                        child: Text(
                          "Shakes",
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      )),
                )),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              UserInformation()));
                },
                child: Container(
                  padding: EdgeInsets.all(20),

                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEpkpJf2ShvxTN6hqfi9YFMNrq7Qt3yQMGrw&usqp=CAU',
                          )),
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
                  height: 100,
                  width: 165,
                  //color: Colors.red,
                  child: Card(
                      color: Colors.yellow[50],
                      child: Center(
                        child: Text(
                          "Snaks",
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      )),
                )),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRQVKwwKKw4OCLZRy6imvNZP1An224GFBcxnopTng8qdQhIkMgxLo5614ZgHiQBpePK_A&usqp=CAU  ',
                        )),
                    color: Colors.yellow[800],
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                height: 100,
                width: 165,
                // color: Colors.red,
                child: Card(
                    color: Colors.yellow[50],
                    child: Center(
                      child: Text(
                        "Beverages",
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    )),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
