import 'package:first_flutter_app/Media_Query.dart';
import 'package:first_flutter_app/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Register.dart';
import 'home.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  int justify = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            IconButton(
              icon: FaIcon(FontAwesomeIcons.user),
              iconSize: 100,
              onPressed: () {},
            ),
            // Container(
            //   child: Center(
            //     child: Image.asset(
            //       'assets/images/login.jpg',
            //       width: 150,
            //       height: 150,
            //     ),
            //   ),
            // ),
            Container(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Image.asset(
                    //   'assets/images/login.jpg',
                    //   width: 100,
                    //   height: 100,
                    //   scale: 1.0,
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        // The validator receives the text that the user has entered.
                        decoration: InputDecoration(
                            labelText: 'User Name',
                            labelStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        // The validator receives the text that the user has entered.
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),

                    Center(
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                            ),
                            RaisedButton(
                              color: Colors.amber,
                              onPressed: () {
                                // Validate returns true if the form is valid, or false otherwise.
                                if (formKey.currentState!.validate()) {
                                  // If the form is valid, display a snackbar. In the real world,
                                  // you'd often call a server or save the information in a database.
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('')));
                                  justify = 1;

                                  Navigator.pushReplacement<void, void>(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          const Home(),
                                    ),
                                  );
                                }
                              },
                              child: Text('Sign In'),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 2.9),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()),
                                  );
                                  // Validate returns true if the form is valid, or false otherwise.
                                  //
                                },
                                child: Text('New User?Create account'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}