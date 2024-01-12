import 'package:flutter/material.dart';

class WelcomeHomePage extends StatefulWidget {
  const WelcomeHomePage({super.key});

  @override
  State<WelcomeHomePage> createState() => _WelcomeHomePageState();
}

class _WelcomeHomePageState extends State<WelcomeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: Container(
              color: Colors.amber,
              height: 120,
              width: 120,
              child: const Icon(
                Icons.ac_unit,
                size: 60,
                color: Colors.white,
              ),
            ),
          ),
          const Text(
            "Hey, Welcome Back!",
            style: TextStyle(
                fontSize: 24,
                decoration: TextDecoration.none,
                color: Colors.black),
          ),
          TextField(
            textAlign: TextAlign.left,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16.0),
                hintText: "Email Address",
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8), gapPadding: 16),
                hintStyle: TextStyle(fontSize: 16)),
          )
        ],
      ),
    ));
  }
}
