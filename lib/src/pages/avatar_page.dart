import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 25,
        
        title: Text('Avatar Page'),
        
      ),
      body: Text('Avatar Page'),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){print('Avatar Page');},
      ),
    );
  }
}

