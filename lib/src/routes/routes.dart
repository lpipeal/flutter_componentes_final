import 'package:flutter/material.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/basico_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/scroll_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';


Map<String, WidgetBuilder> getAplicationRoutes(){
  
  return <String, WidgetBuilder>{
        '/'             : (BuildContext context)=> HomePage(),
        'alert'         : (BuildContext context)=> AlertPage(),
        'avatar'        : (BuildContext context)=> AvatarPage(),
        'card'          : (BuildContext context)=> CardPage(),
        'container'     : (BuildContext context)=> AnimatedContainerPage(),
        'basico'        : (BuildContext context)=> BasicoPage(),
        'scroll'        : (BuildContext context)=> ScrollPage(),
        'inputs'        : (BuildContext context)=> InputPage(),
      };

}

