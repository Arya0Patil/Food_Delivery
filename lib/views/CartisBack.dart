import 'package:ecom101/helper/categories.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: PlaceOrder(),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "My Cart",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Items',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          CartItems(context),
          Divider(
            thickness: 2,
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              "Price Details",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          PriceDetails(context),
          SizedBox(
            height: 10,
          ),
          DeliveryDetails(context),
          ScrollEndImg(),
        ]),
      ),
    );
  }

  Widget CartItems(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            // height: 200,
            //width: 300,
            child: Card(
              color: Colors.yellow[50],
              child: Row(
                children: [
                  Container(
                    height: 110,
                    width: 120,
                    child: Card(
                      color: Colors.grey[100],
                    ),
                  ),
                  Text(
                    "Cart Items",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget PriceDetails(BuildContext context) {
    return Card(
      color: Colors.green[50],
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total MRP",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "140.0",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discounts Applied",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "40.0",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "20.0",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Amount",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "120.0",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget DeliveryDetails(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.grey[100],
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: 260,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deliver To ",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Ethos Industries Malkapur maharashtra",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'change',
                        style: TextStyle(color: Colors.pink[600]),
                      )))
            ],
          ),
        ),
      ),
    );
  }

  Widget PlaceOrder() {
    return Container(
      height: 50,
      child: Center(
          child: ElevatedButton(
              // style: ButtonStyle(shadowColor: ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Categories()));
              },
              child: Container(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Place Order',
                        textAlign: TextAlign.center,
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  )))),
    );
  }

  Widget ScrollEndImg() {
    return Container(
      width: 400,
      height: 200,
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtNix5g2XvPX7dkHwAYD4zBRQbrYzB4KqDeg&usqp=CAU',
              fit: BoxFit.fill,
            ),
          )),
    );
  }
}
