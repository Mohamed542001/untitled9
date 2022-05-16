import 'package:flutter/material.dart';
import 'package:untitled9/view/login/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),
      builder: (context,child)=>Directionality(textDirection: TextDirection.rtl,child: child,),
    );
  }
}


