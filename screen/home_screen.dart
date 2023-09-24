import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/leaf.png'),
              backgroundColor: Colors.white,
              radius: 16,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: '  Krishi',
                  style: TextStyle(
                      color: Colors.brown.shade500,
                      fontWeight: FontWeight.bold,
                      fontSize: 22)),
              TextSpan(
                  text: 'Sahayak',
                  style: TextStyle(
                      color: Colors.green.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 22)),
            ]))
          ],
        ),
      ),
    ));
  }
}
