import 'package:ecom101/sevices/managedata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Calculations with ChangeNotifier {
  int quantityValue = 1;
  int get getQuantityvalue => quantityValue;

  addQuantity() {
    quantityValue++;
    notifyListeners();
  }

  removeQuantity() {
    if (quantityValue > 1) {
      quantityValue--;
    }
    notifyListeners();
  }

  addToCart(BuildContext context, dynamic data) async {
    if (quantityValue != 0) {
      await Provider.of<ManageData>(context, listen: false)
          .submitData(context, data);
      notifyListeners();
    } else {
      return showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
                height: 50,
                child: Center(
                  child: Text('Please specify the quantity'),
                ));
          });
    }
  }
}
