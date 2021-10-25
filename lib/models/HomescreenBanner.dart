import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 320,
        height: 80,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrtQwTy6_MXY-pDKZo2c76sNugIst0SqrqJA&usqp=CAU",
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
