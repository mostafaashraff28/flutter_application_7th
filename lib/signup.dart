// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF181818), 
        body: SingleChildScrollView(
          child: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 50), 
                  Text("Signup",
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: "myfont",
                          color: Colors.white)), 
                  SizedBox(height: 50), // Increased spacing
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color(0xFF2A2A2A), 
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.white), 
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Full Name",
                        hintStyle: TextStyle(color: Colors.grey), 
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(Icons.person,
                              color: Colors.white), 
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20), 
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color(0xFF2A2A2A),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.white), 
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(Icons.email,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20), 
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color(0xFF2A2A2A), 
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.white), 
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone Number",
                        hintStyle: TextStyle(color: Colors.grey), 
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(Icons.phone,
                              color: Colors.white), 
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color(0xFF2A2A2A),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey), 
                        suffixIcon: Icon(Icons.visibility,
                            color: Colors.white), 
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(Icons.lock,
                              color: Colors.white), 
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/LogIn');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color(0xFFA044FF)), 
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 70, vertical: 15)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                      ),
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20), 
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/LogIn');
                    },
                    iconAlignment: IconAlignment.end,
                    icon: Icon(
                      Icons.person,
                      color: Color(0xFFA044FF), 
                      size: 24.0,
                    ),
                    label: Text('Already have an account? Login',
                        style: TextStyle(
                            color: Colors.white)), 
                  ),
                  SizedBox(height: 10),
                  Text("OR", style: TextStyle(color: Colors.white)),
                  SizedBox(height: 10),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(
                                    0xFF2A2A2A)),
                            child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  "assets/icons/facebook.svg",
                                  width: 30,
                                  height: 30),
                            )),
                        SizedBox(width: 10),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(
                                    0xFF2A2A2A)), 
                            child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset("assets/icons/twitter.svg",
                                  width: 30, height: 30),
                            )),
                        SizedBox(width: 10),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(
                                    0xFF2A2A2A)), 
                            child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  "assets/icons/google-plus.svg",
                                  width: 30,
                                  height: 30),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height:20),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    label: Text(
                      'HOME Welcome_page',
                      style: TextStyle(color: const Color.fromARGB(255, 169, 38, 184)), 
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
