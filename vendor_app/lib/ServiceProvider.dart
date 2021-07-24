import 'package:flutter/material.dart';

class ServiceProviderHomePage extends StatelessWidget {
  const ServiceProviderHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service provider Home'),
      ),
      body: Column(
        children: [
          Center(
            child: Text('Service Provider'),
          )
        ],
      ),
    );
  }
}
