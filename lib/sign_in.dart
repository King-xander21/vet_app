import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Container(
            //color: Colors.green,
            margin: EdgeInsets.only(top: 20),
            width: 477,
            height: 528,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
