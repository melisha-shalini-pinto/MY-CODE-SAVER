import 'package:flutter/material.dart';
import 'package:mycodesaver/add_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mycodesaver/showdata.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code Saver',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        brightness: Brightness.dark,
      ),
      home: ShowDataPage()
    );
  }
}
