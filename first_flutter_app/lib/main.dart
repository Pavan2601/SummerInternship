<<<<<<< HEAD
// @dart=2.9
import 'package:first_flutter_app/home.dart';
import 'package:first_flutter_app/start_screen.dart';
=======
<<<<<<< HEAD
import 'package:first_flutter_app/home.dart';
=======
// @dart=2.9
import 'package:first_flutter_app/home.dart';
import 'package:first_flutter_app/start_screen.dart';
>>>>>>> 48a75a6 (Scanner Added)
>>>>>>> origin
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:validators/sanitizers.dart';
import 'Register.dart';
import 'login.dart';
import 'Dashboard.dart';
import 'Media_Query.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
<<<<<<< HEAD
    home: SplashScreen(),
=======
<<<<<<< HEAD
    home: MyApp(),
=======
    home: SplashScreen(),
>>>>>>> 48a75a6 (Scanner Added)
>>>>>>> origin
  ));
}

class MyApp extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold();
=======
<<<<<<< HEAD
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: <Widget>[
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black38),
            ),
            child: Text(
              'login',
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.cyan,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.zero,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
<<<<<<< HEAD
                      ElevatedButton(
                        onPressed: () {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text('')));
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          }
=======
                      // Padding(
                      //   padding: EdgeInsets.only(left: 2),
                      // ),
                      ListTile(
                        title: Text(
                          'Dashboard',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DashboardPage()),
                          );
>>>>>>> fa9f19f8f676f47b10c99d659bcb441cba2e1673
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ListTile(
                        title: Text(
                          'Settings',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Center(
          child: Text(
            'Hi....This is home page',
            textDirection: TextDirection.ltr,
          ),
        )),
      ),
    );
=======
    return Scaffold();
>>>>>>> 48a75a6 (Scanner Added)
>>>>>>> origin
  }
}
