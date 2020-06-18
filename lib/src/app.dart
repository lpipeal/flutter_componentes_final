import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';

import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
// import 'package:componentes/src/pages/home_temp.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home:  HomePageTemp()
      //home:  HomePage()
      initialRoute: '/',
      routes: getAplicationRoutes(),
       onGenerateRoute: (RouteSettings settings){
        print('Ruta llamada ${settings.name}');
        
        return MaterialPageRoute(
          builder: (context) => AlertPage(),
        );
      }
    );
    
  }

  
}