import 'package:ecom101/views/userProfile.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class Headers extends ChangeNotifier {
  Widget appBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (BuildContext context) => UserProfile()));
            },
            icon: Icon(Icons.person)),
        Row(
          children: [
            Icon(
              Icons.room,
              color: Colors.grey[600],
            ),
            Text(
              'Caffinated',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
          color: Colors.black,
        ),
      ],
    );
    // ignore: dead_code
  }

  Widget heading() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5.0, 10.0, 0, 5.0),
        child: Text(
          'Caffinated',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.brown,
            fontSize: 35.0,
          ),
        ),
      ),
    );
  }
}
