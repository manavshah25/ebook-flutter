import 'package:ebookreader/backcolor.dart';
import 'package:ebookreader/screens/home_screen.dart';
import 'package:ebookreader/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'dart:core';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EReader',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: kBlackColor,
        )
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width:MediaQuery.of(context).size.width*.6,
              child: RoundedButton(
                text: "Click here to Read!!",
                fontSize: 20,
                press: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                  return HomeScreen();
                  },
                ),
                );
                  },
              ),
            ),
            RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.displaySmall,
                  children: [
                    TextSpan(
                      text: "BR",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: "eader",

                    )
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
