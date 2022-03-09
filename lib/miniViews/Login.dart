import 'package:ecom101/sevices/authentication.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Card(
            child: Column(
              children: [
                Text('Caffinated'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget LoginForm(BuildContext context) {
    return Container(
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value.isEmpty ||
                      !value.contains('@') ||
                      !value.contains('.com')) {
                    return 'Email not valid';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Enter email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(color: Colors.purple)),
                ),
              ),
              TextFormField(
                controller: passwordController,
                validator: (value) {
                  if (value.isEmpty || value.length < 5) {
                    return 'Enter atleast 5 characters';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Enter Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(color: Colors.purple)),
                ),
              ),
              MaterialButton(
                  onPressed: () => Provider.of<Auth>(context, listen: false)
                      .logIn(emailController.text, passwordController.text))
            ],
          )),
    );
  }
}
