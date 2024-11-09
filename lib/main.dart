// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_7th/welcome.dart';
import 'login.dart';
import 'movies.dart';
import 'signup.dart';
import 'towatch.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Welcome(),
        '/LogIn': (context) => const Login(),
        '/Signup': (context) => const Signup(),
        '/Movies': (context) => const Movies(),
        '/ToWatch': (context) => const ToWatch(),
      },
    );
  }
}
