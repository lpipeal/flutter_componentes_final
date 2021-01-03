import 'package:flutter/material.dart';

import 'dart:math';



class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width =50;
  double _height =50;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(4.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child:AnimatedContainer(
           duration: Duration(seconds: 1),
           curve: Curves.fastOutSlowIn,
           width: _width,
           height: _height,
           decoration: BoxDecoration(
             borderRadius: _borderRadius,
             color: _color,
           ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_drop_down_circle),
        onPressed: _cambiarForma
      ),
          );
        }
      
        _cambiarForma() {
            
            final random = new Random();
            setState(() {
               _width =random.nextInt(300).toDouble();
               _height =random.nextInt(300).toDouble();
               _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
               _borderRadius= BorderRadius.circular(random.nextInt(100).toDouble());
            });

            AnimatedContainerPage(
            
            );

        }
}