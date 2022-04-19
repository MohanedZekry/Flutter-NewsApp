import 'package:flutter/material.dart';

class BusinessLayout extends StatelessWidget {
  const BusinessLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Business Screen',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
      ),
    );
  }
}
