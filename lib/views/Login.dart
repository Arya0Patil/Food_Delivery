import 'package:ecom101/Providers/Authentication.dart';
import 'package:ecom101/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogInScreen extends StatelessWidget {
  final TextEditingController emailCotroller = TextEditingController();
  final TextEditingController passwordCotroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Caffinated',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        loginSheet(context);
                      },
                      child: Text(
                        'Login',
                        style:
                            TextStyle(color: Colors.yellowAccent, fontSize: 20),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        signinSheet(context);
                      },
                      child: Text(
                        'SignUp',
                        style:
                            TextStyle(color: Colors.yellowAccent, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  loginSheet(BuildContext context) {
    return showModalBottomSheet(
        backgroundColor: Colors.brown,
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              height: 400.0,
              width: 400.0,
              decoration: BoxDecoration(
                color: Colors.pink[100],
              ),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Enter email",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0)),
                            )),
                        controller: emailCotroller,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                          )),
                      controller: passwordCotroller,
                      style: TextStyle(color: Colors.white),
                    ),
                    MaterialButton(
                      child: Text("Login"),
                      color: Colors.amber,
                      onPressed: () => Provider.of<Authentication>(context,
                              listen: false)
                          .logIn(emailCotroller.text, passwordCotroller.text)
                          .whenComplete(() {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    HomeScreen()));
                      }),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  signinSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(20),
            height: 500.0,
            width: 400.0,
            decoration: BoxDecoration(
              color: Colors.pink[100],
            ),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter email",
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                          )),
                      controller: emailCotroller,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        )),
                    controller: passwordCotroller,
                    style: TextStyle(color: Colors.white),
                  ),
                  MaterialButton(
                    child: Text("Sign Up"),
                    color: Colors.amber,
                    onPressed: () =>
                        Provider.of<Authentication>(context, listen: false)
                            .signUp(emailCotroller.text, passwordCotroller.text)
                            .whenComplete(() {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => HomeScreen()));
                    }),
                  )
                ],
              ),
            ),
          );
        });
  }
}
