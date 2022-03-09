import 'package:ecom101/Providers/Authentication.dart';
import 'package:ecom101/Providers/calculations.dart';
import 'package:ecom101/helper/footer.dart';
import 'package:ecom101/helper/headers.dart';
import 'package:ecom101/sevices/managedata.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import "package:ecom101/views/splashScreen.dart";
import 'package:provider/provider.dart';
import 'package:ecom101/helper/midBody.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Calculations()),
        ChangeNotifierProvider.value(value: Authentication()),
        ChangeNotifierProvider.value(value: Headers()),
        ChangeNotifierProvider.value(value: MidBodyHelper()),
        ChangeNotifierProvider.value(value: ManageData()),
        ChangeNotifierProvider.value(value: footer()),
      ],
      child: MaterialApp(
          title: 'Caffinated',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.brown,
          ),
          home: SplashScreen()),
    );
  }
}
