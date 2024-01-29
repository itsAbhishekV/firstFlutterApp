import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('0',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter the amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.white60,
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.white60,
                ),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              )
            ]
          ),
        )
      )
    );
  }
}
