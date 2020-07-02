import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';


import 'package:componentes/src/pages/alert_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'CO'),
        
      ],


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