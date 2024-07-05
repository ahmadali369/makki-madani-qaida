import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late List<bool> _buttonStates;

  @override
  void initState() {
    super.initState();
    _buttonStates = List<bool>.filled(3, false);
  }

  void _triggerButton(int index) {
    setState(() {
      _buttonStates[index] = !_buttonStates[index];
    });
  }

  Future<void> _triggerButtonsSequentially() async {
    for (int i = 0; i < _buttonStates.length; i++) {
      _triggerButton(i);
      if (i > 0) {
        _triggerButton(i - 1); // Reset the previous button
      }
      await Future.delayed(Duration(seconds: 1));

    }
    // Reset the last button after the loop ends
    _triggerButton(_buttonStates.length - 1);
  }
  
  
  
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
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                primary: _buttonStates[0] ? Colors.green : Colors.blue,
              ),

              onPressed: (){
                _triggerButton(0);
                print("button 1");
              },
              child: FlutterLogo(),
            ),
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

            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                primary: _buttonStates[1] ? Colors.green : Colors.blue,
              ),

              onPressed: (){
                _triggerButton(1);
                print("button 2");

              },
              child: FlutterLogo(),
            ),

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
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: _buttonStates[2] ? Colors.green : Colors.blue,
              ),
              onPressed: (){
                _triggerButton(2);
                print("button 3");

              },
              child: FlutterLogo(),
            ),
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
    ),
      
      floatingActionButton: TextButton(

        onPressed: _triggerButtonsSequentially,
        child: Icon(Icons.access_alarm_outlined,),
      ),
    );
  }
}
