import 'package:vendor_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:validators/validators.dart';
import '../../services/auth.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();

  final AuthService _auth = AuthService();

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController error = TextEditingController();

  String Error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Registration Page"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  // The validator receives the text that the user has entered.
                  controller: firstName,
                  decoration: InputDecoration(
                      labelText: 'First Name', border: OutlineInputBorder()),
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
                  controller: lastName,
                  // The validator receives the text that the user has entered.
                  decoration: InputDecoration(
                      labelText: 'Last Name', border: OutlineInputBorder()),
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
                  controller: email,
                  // The validator receives the text that the user has entered.
                  decoration: InputDecoration(
                      labelText: 'Email', border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid Email';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: password,
                  // The validator receives the text that the user has entered.
                  decoration: InputDecoration(
                      labelText: 'Password', border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return 'Please enter password with more than 6 character';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RaisedButton(
                  color: Colors.amber,
                  onPressed: () async {
                    dynamic result = await _auth.registerWithEmailAndPassword(
                      email.text,
                      password.text,
                    );
                    if (result == null) {
                      setState(() {
                        Error = "Enter vaild Email";
                      });
                    }
                    // Validate returns true if the form is valid, or false otherwise.
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Registered Successfully')));
                      Navigator.pop(context);
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
              Text(Error)
            ],
          ),
        ),
      ),
    );
  }
}
