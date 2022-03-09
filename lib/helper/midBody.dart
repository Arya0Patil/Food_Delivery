import 'package:ecom101/sevices/managedata.dart';
import 'package:ecom101/views/detailScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class MidBodyHelper extends ChangeNotifier {
  Widget textPopular() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 4.0),
      child: Text(
        'Specialities',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
          // shadows: [BoxShadow(color: Colors.green, blurRadius: 2)]
        ),
      ),
    );
  }

  Widget speciality(BuildContext context, String collection) {
    return Container(
      height: 220.0,
      child: FutureBuilder(
        future: Provider.of<ManageData>(context, listen: false)
            .fetchData(collection),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Lottie.asset('animations/loader2.json'),
            );
          }
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          child: DetailScreen(
                            queryDocumentSnapshot: snapshot.data[index],
                          ),
                          type: PageTransitionType.bottomToTop),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 280.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[100],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.brown[400].withOpacity(.3),
                              offset: Offset(2, 2),
                              blurRadius: 3.0,
                            )
                          ],
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15.0),
                                      child: Image.network(
                                        snapshot.data[index].data()['image'],
                                        fit: BoxFit.fill,
                                      ),
                                    )),
                                // Positioned(
                                //     child: IconButton(
                                //   onPressed: () {},
                                //   icon: Icon(
                                //     Icons.favorite,
                                //     color: Colors.pink,
                                //   ),
                                // )),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                snapshot.data[index].data()['name'],
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                snapshot.data[index].data()['category'],
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Text(
                                  '₹ ' + snapshot.data[index].data()['price'],
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }

  Widget shakes() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 4.0),
      child: Text(
        'Shakes',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
          // shadows: [BoxShadow(color: Colors.green, blurRadius: 2)]
        ),
      ),
    );
  }

  Widget shakesw(BuildContext context, String collection) {
    return Container(
      height: 220.0,
      child: FutureBuilder(
        future: Provider.of<ManageData>(context, listen: false)
            .fetchData(collection),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Lottie.asset('animations/loader2.json'),
            );
          }
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          child: DetailScreen(
                            queryDocumentSnapshot: snapshot.data[index],
                          ),
                          type: PageTransitionType.bottomToTop),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 220.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                          color: Colors.green[100],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.brown[400].withOpacity(.3),
                              offset: Offset(2, 2),
                              blurRadius: 3.0,
                            )
                          ],
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Card(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15.0),
                                      child: Image.network(
                                        snapshot.data[index].data()['image'],
                                        fit: BoxFit.fill,
                                        height: 100.0,
                                        width: 140.0,
                                      ),
                                    )),
                                // Positioned(
                                //     child: IconButton(
                                //   onPressed: () {},
                                //   icon: Icon(
                                //     Icons.favorite,
                                //     color: Colors.pink,
                                //   ),
                                // )),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                snapshot.data[index].data()['name'],
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                snapshot.data[index].data()['category'],
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Text(
                                  '₹ ' + snapshot.data[index].data()['price'],
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
