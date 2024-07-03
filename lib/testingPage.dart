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

        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/images/img (10).jpg',
            fit: BoxFit.fill,
          ),
        ),

        /// -------------------------------------------------------------------------------------- row 1   188

        /// alif
        Positioned(
          left: MediaQuery.of(context).size.width *
              0.790, // Adjust the left position as needed.
          top: MediaQuery.of(context).size.height *
              0.427, // Adjust the top position as needed.

          child: Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(5)),

            width: MediaQuery.of(context).size.width * .172,
            height: MediaQuery.of(context).size.height * .075,
            // Change the color as needed.
          ),
        ),

        /// baa
        Positioned(
          left: MediaQuery.of(context).size.width *
              0.602, // Adjust the left position as needed.
          top: MediaQuery.of(context).size.height *
              0.427, // Adjust the top position as needed.

          child: Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(5)),

            width: MediaQuery.of(context).size.width * .172,
            height: MediaQuery.of(context).size.height * .075,
            // Change the color as needed.
          ),
        ),

        /// taa
        Positioned(
          left: MediaQuery.of(context).size.width *
              0.414, // Adjust the left position as needed.
          top: MediaQuery.of(context).size.height *
              0.427, // Adjust the top position as needed.

          child: Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(5)),

            width: MediaQuery.of(context).size.width * .172,
            height: MediaQuery.of(context).size.height * .075,
            // Change the color as needed.
          ),
        ),

        /// saa
        Positioned(
          left: MediaQuery.of(context).size.width *
              0.226, // Adjust the left position as needed.
          top: MediaQuery.of(context).size.height *
              0.427, // Adjust the top position as needed.

          child: Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(5)),

            width: MediaQuery.of(context).size.width * .172,
            height: MediaQuery.of(context).size.height * .075,
            // Change the color as needed.
          ),
        ),

        /// saa
        Positioned(
          left: MediaQuery.of(context).size.width *
              0.038, // Adjust the left position as needed.
          top: MediaQuery.of(context).size.height *
              0.427, // Adjust the top position as needed.

          child: Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(5)),

            width: MediaQuery.of(context).size.width * .172,
            height: MediaQuery.of(context).size.height * .075,
            // Change the color as needed.
          ),
        ),

        /// ------------------------------------------------------------------------------------------ row 2

        /// haa
        Positioned(
          left: MediaQuery.of(context).size.width *
              0.790, // Adjust the left position as needed.
          top: MediaQuery.of(context).size.height *
              0.515, // Adjust the top position as needed.

          child: Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(5)),

            width: MediaQuery.of(context).size.width * .172,
            height: MediaQuery.of(context).size.height * .075,
            // Change the color as needed.
          ),
        ),

        // Add more Positioned containers as needed.
      ],
    ));
  }
}
