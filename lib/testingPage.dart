import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    final double Height = MediaQuery.of(context).size.height;
    final double Width = MediaQuery.of(context).size.width;

    return Scaffold(

      body: Stack(
        children: [
          // Background image
          Positioned(

            child: Image.asset(
              'assets/images/img (10).jpg',

            ),
          ),

          // Container 1
          Positioned(
            left: MediaQuery.of(context).size.width * 0.2, // Adjust the left position as needed.
            top: MediaQuery.of(context).size.height * 0.3, // Adjust the top position as needed.
            child: FractionallySizedBox(
              widthFactor: 0.3, // Adjust the width factor as needed.
              heightFactor: 0.1, // Adjust the height factor as needed.
              child: Container(
                color: Colors.red, // Change the color as needed.
              ),
            ),
          ),

          // Container 2
          Positioned(
            left: MediaQuery.of(context).size.width * 0.5, // Adjust the left position as needed.
            top: MediaQuery.of(context).size.height * 0.6, // Adjust the top position as needed.
            child: FractionallySizedBox(
              widthFactor: 0.2, // Adjust the width factor as needed.
              heightFactor: 0.15, // Adjust the height factor as needed.
              child: Container(
                color: Colors.blue, // Change the color as needed.
              ),
            ),
          ),

          // Add more Positioned containers as needed.
        ],
      )




    );
  }
}
