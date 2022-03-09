import 'package:ecom101/views/CartisBack.dart';
import 'package:flutter/material.dart';

class footer extends ChangeNotifier {
  Widget floatingButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => Cart()));
      },
      child: Icon(Icons.shopping_bag),
    );
  }
}
