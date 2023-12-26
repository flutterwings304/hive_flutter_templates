import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_flutter_templates/hive_box_constant.dart';
import 'package:hive_flutter_templates/main_screen.dart';
import 'package:hive_flutter_templates/models/post_models.dart';

Future main() async {
  //It is used so that void main function can be intiated after successfully intialization of data
  WidgetsFlutterBinding.ensureInitialized();
//To intialise the hive database
  await Hive.initFlutter();
  // Hive.registerAdapter(PostModelAdapter());

//Open Box for Post model
  // await Hive.openBox<PostModelAdapter>("postBox");
  //To open the user hive box
  await Hive.openBox(userHiveBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hive Template GFG',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MainScreen(),
    );
  }
}
