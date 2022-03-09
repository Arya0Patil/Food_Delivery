import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecom101/Providers/calculations.dart';
import 'package:ecom101/helper/footer.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

import 'CartisBack.dart';

class DetailScreen extends StatefulWidget {
  final QueryDocumentSnapshot queryDocumentSnapshot;
  DetailScreen({this.queryDocumentSnapshot});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: footer().floatingButton(context),
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text('Caffinated'),
      // ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            Center(
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      widget.queryDocumentSnapshot['image'],
                      fit: BoxFit.fill,
                      height: 200.0,
                      width: 250.0,
                    ),
                  )),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(8.0, 10.0, 1.0, 1.0),
                  child: Text(
                    widget.queryDocumentSnapshot['name'],
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.brown[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 1.0, 1.0, 8.0),
                  child: Text(
                    widget.queryDocumentSnapshot['category'],
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.brown[700],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 1.0, 8.0, 8.0),
                  child: Text(
                    '₹ ' + widget.queryDocumentSnapshot['price'],
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.brown[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Expanded(
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 30, 10, 5),
                    decoration: BoxDecoration(
                        color: Colors.deepOrange[100],
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    child: OrderQty(context)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget OrderQty(context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order Quantity',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Provider.of<Calculations>(context, listen: false)
                        .removeQuantity();
                  },
                  icon: Icon(Icons.remove),
                ),
                Text(
                  Provider.of<Calculations>(context, listen: true)
                      .getQuantityvalue
                      .toString(),
                  style: TextStyle(fontSize: 20),
                ),
                IconButton(
                  onPressed: () {
                    Provider.of<Calculations>(context, listen: false)
                        .addQuantity();
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              Provider.of<Calculations>(context, listen: false)
                  .addToCart(context, {
                'image': widget.queryDocumentSnapshot['image'],
                'name': widget.queryDocumentSnapshot['name'],
                'category': widget.queryDocumentSnapshot['category'],
                'price': widget.queryDocumentSnapshot['price'],
                'quantity': Provider.of<Calculations>(context, listen: false)
                    .getQuantityvalue,
              });
            },
            child: Text('Add to Cart')),
      ],
    );
  }

  Widget floatingButton() {
    return FloatingActionButton(
      onPressed: () {
        Provider.of<Calculations>(context, listen: false).addToCart(context, {
          'image': widget.queryDocumentSnapshot['image'],
        });
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => Cart()));
      },
      child: Icon(Icons.shopping_bag),
    );
  }
}
