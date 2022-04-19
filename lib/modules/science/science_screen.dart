import 'package:flutter/material.dart';

class ScienceLayout extends StatelessWidget {
  const ScienceLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Sports Screen',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
      ),
    );
  }
}
