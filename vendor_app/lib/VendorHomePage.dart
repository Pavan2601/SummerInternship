import 'package:flutter/material.dart';

class VendorHomePage extends StatelessWidget {
  const VendorHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vendor Home'),
      ),
      body: Column(
        children: [
          Center(
            child: Text('Vendor'),
          )
        ],
      ),
    );
  }
}
