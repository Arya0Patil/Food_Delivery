import 'package:ecom101/helper/categories.dart';
import 'package:ecom101/helper/footer.dart';
import 'package:ecom101/helper/headers.dart';
import 'package:ecom101/helper/scrollEndMsg.dart';
import 'package:ecom101/models/HomescreenBanner.dart';
import 'package:flutter/material.dart';
import 'package:ecom101/helper/midBody.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: footer().floatingButton(context),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Headers().appBar(context),
            Headers().heading(),
            Divider(),
            HomeBanner(),
            MidBodyHelper().textPopular(),
            MidBodyHelper().speciality(context, 'special'),
            MidBodyHelper().shakes(),
            MidBodyHelper().shakesw(context, 'shakes'),
            Categories(),
            scrollEndMsg(context, 'Food is symbolic of love',
                'when words are inadequet'),
          ]),
        ),
      ),
    );
  }
}
