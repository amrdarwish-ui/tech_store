import 'package:flutter/material.dart';
import 'package:tech_store/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech Store',
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
