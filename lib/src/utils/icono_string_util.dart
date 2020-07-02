import 'package:flutter/material.dart';


final _icons = <String, IconData>{

  'add_alert'     :Icons.add_alert,
  'accessibility' :Icons.accessibility,
  'folder_open'   :Icons.folder_open,
  'add'           :Icons.add,
  'container'     :Icons.aspect_ratio,
  'input'         :Icons.input,
  
};

Icon getIcon(String nombreIcono){
  return Icon(_icons[nombreIcono],color: Colors.blue,);
}