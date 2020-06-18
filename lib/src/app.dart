import 'package:componentes/src/pages/home_page.dart';
// import 'package:componentes/src/pages/home_temp.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home:  HomePageTemp()
      home:  HomePage()
      
    );
  }
}