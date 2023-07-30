import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yt_quran/splash_screen.dart';
import 'constant.dart';
import 'index.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
   @override
  void initState() {
    WidgetsBinding
        .instance
        .addPostFrameCallback(

            (_) async{
      await readJson();
      await getSetting();
    }



    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quran',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(),//IndexPage(),
     
    );
  }
}

