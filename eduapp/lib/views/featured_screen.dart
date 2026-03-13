import 'package:flutter/material.dart';

class FeaturedScreen extends StatelessWidget {
  const FeaturedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration( borderRadius: BorderRadius.vertical(bottom: Radius.circular(30),),),
        ),
      ],),
    );      
  }
}
