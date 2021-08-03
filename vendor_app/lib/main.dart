import 'package:flutter/material.dart';
import 'package:vendor_app/ServiceProvider.dart';
import 'package:vendor_app/VendorHomePage.dart';
import 'Register.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Home Page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _title,
        home: Scaffold(
          body: Center(
            child: MyStatefulWidget(),
          ),
        ));
  }
}

enum SingingCharacter { vendor, service_Provider }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? _character = SingingCharacter.vendor;
  final formKey = GlobalKey<FormState>();
  var characterValue = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Image.asset(
                      'assets/images/login.jpg',
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    // The validator receives the text that the user has entered.
                    decoration: InputDecoration(
                        labelText: 'User Name', border: OutlineInputBorder()),
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
                    // The validator receives the text that the user has entered.
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
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
                        ListTile(
                          title: const Text('Vendor'),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.vendor,
                            groupValue: _character,
                            toggleable: true,
                            onChanged: (SingingCharacter? value) {
                              //print(characterValue);
                              setState(() {
                                _character = value;
                                characterValue = 1;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('Service Provider'),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.service_Provider,
                            groupValue: _character,
                            toggleable: true,
                            onChanged: (SingingCharacter? value) {
                              //print(characterValue);
                              setState(() {
                                _character = value;
                                characterValue = 0;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text('')));
                              if (characterValue == 1) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VendorHomePage()),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ServiceProviderHomePage()),
                                );
                              }
                            }
                          },
                          child: Text('Sign In'),
                        ),
                        SizedBox(
                          height: 100,
                        ),
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
                            child: Text('New User? Create account'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ))
      ]),
    );
  }
}
