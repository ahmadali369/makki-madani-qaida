import 'package:flutter/material.dart';

import '../pages/p1-9_s1.dart';
import '../pages/p2-10_s2.dart';
import '../pages/p3-11_s3.dart';

void main() {
  runApp(TasbeehApp());
}

class TasbeehApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasbeehScreen(),
    );
  }
}

class TasbeehScreen extends StatefulWidget {
  @override
  _TasbeehScreenState createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen> {
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  void _resetCounter() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(60, 40, 0, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  PageButton(name: "P1_s1", Page: const P1_S1()),

                  const SizedBox(height: 10,),

                  PageButton(name: "P2_s2", Page: const P2_S2()),

                  const SizedBox(height: 10,),

                  PageButton(name: "P3_s3", Page: const P3_S3()),


                ],
              ),
            ),
          )


        ],
      ),
    );
  }
}




class PageButton extends StatefulWidget {

  const PageButton({super.key, required this.name, required this.Page});

  final String name;
  final Widget Page;


  @override
  State<PageButton> createState() => _PageButtonState();
}

class _PageButtonState extends State<PageButton> {
  @override
  Widget build(BuildContext context) {
    return                     GestureDetector(
      onTap: () {

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => widget.Page));
        // Handle login
      },
      child: Container(
        height: 50,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * .6,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF13342d), // Dark Green
              Color(0xFFFFD700), // Gold
              Color(0xFFFFE066), // Light Gold (Center)
              Color(0xFFFFD700), // Gold
              Color(0xFF13342d), // Dark Green
            ],
            stops: [0.0, 0.35, 0.5, 0.65, 1.0],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          widget.name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

