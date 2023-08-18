
// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'main_screen.dart';

Future<void> main() async {  
  //  var path = Directory.current.path;

  //  Hive.init(path);
     Hive.init(null);
  // await Hive.openBox('testBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hive Local Storage Template',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}


