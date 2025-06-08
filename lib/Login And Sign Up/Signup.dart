// import 'package:al_quran/Login%20And%20Sign%20Up/Login.dart';
// import 'package:al_quran/Quran%20App/QuranApp.dart';
import 'package:flutter/material.dart';

import '../Quran App/QuranApp.dart';
import 'Login.dart';



class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevents UI shifting when keyboard appears
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            "assets/background.png",
            fit: BoxFit.cover,
          ),

          // Semi-transparent Overlay
          Container(
            color: Colors.black.withOpacity(0.6),
          ),

          // Content with Scroll
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Center(
                      child: Text(
                        "Start with Bismillah",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),

                    TextField(
                      cursorColor: Color(0xFFFFD700),
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.2),
                        hintText: "Name",
                        hintStyle: TextStyle(color: Colors.white70),
                        prefixIcon: Icon(Icons.person, color: Color(0xFFFFD700),),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),

                    TextField(
                      keyboardType: TextInputType.phone,
                      cursorColor: Color(0xFFFFD700),
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.2),
                        hintText: "Phone Number",
                        hintStyle: TextStyle(color: Colors.white70),
                        prefixIcon: Icon(Icons.phone, color: Color(0xFFFFD700),),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),

                    // Email Field
                    TextField(
                      cursorColor: Color(0xFFFFD700),
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.2),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white70),
                        prefixIcon: Icon(Icons.email, color: Color(0xFFFFD700),),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),

                    // Password Field
                    TextField(
                      cursorColor: Color(0xFFFFD700),
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.2),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white70),
                        prefixIcon: Icon(Icons.lock, color: Color(0xFFFFD700)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    // Remember Me & Forgot Password Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform.translate(
                          offset: Offset(-10, 0),
                          child: Row(
                            children: [
                              Checkbox(
                                value: rememberMe,
                                activeColor: Color(0xFFFFD700),
                                checkColor: Colors.black,
                                onChanged: (value) {
                                  setState(() {
                                    rememberMe = value!;
                                  });
                                },
                              ),
                              Text(
                                "Remember Me",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle forgot password
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Color(0xFFFFD700),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    // Gradient Login Button
                    GestureDetector(
                      onTap: () {

                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => QuranApp()));
                        // Handle login
                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        width: double.infinity,
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
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Don't have an account? Sign Up
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                          // Navigate to Sign Up screen
                        },
                        child: RichText(
                          text: TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(color: Colors.white),
                            children: [
                              TextSpan(
                                text: "Login",
                                style: TextStyle(
                                  color: Color(0xFFFFD700),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
