// ignore_for_file: file_names, unnecessary_const
import 'dart:async';
import 'package:flutter/material.dart';
import 'foodapp/firstpage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    {
      Timer(
          const Duration(seconds: 4),
          () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const PizaApp())));
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 242, 164, 46),
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
                height: 450,
                width: 270,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: Image.asset("images/splash.jpg")),
          ),
        ),
      ),
    );
  }
}
