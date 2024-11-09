// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';


class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/man-watching-Welcome.jpg"),
            fit: BoxFit.cover, 
          ),
        ),
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                SizedBox(height: 300,),
                Text("Watch your favorite movies or series on only one platform. You can watch it anytime and anywhere.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(height: 30),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/LogIn');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                          horizontal: 70, vertical: 15)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                    ),
                    
                    child: Text(
                      "GetStarted",
                      style: TextStyle(fontSize: 15, color: Colors.white,fontFamily: "myfont"),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/ToWatch');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                          horizontal: 70, vertical: 15)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                    ),
                    
                    child: Text(
                      "Towatch",
                      style: TextStyle(fontSize: 15, color: Colors.white,fontFamily: "myfont"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
