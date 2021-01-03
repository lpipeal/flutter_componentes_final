import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(7),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQEjLLFtP0c-eM81doPvo4_FQ2vpMds3krveQ&usqp=CAU'),
              radius: 20,
             
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
            
          ),
        ],

      ),
      body: Column(
        
        children: <Widget>[
         Center(child: Text('Stan lee',style:TextStyle(fontSize: 30,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),)
         ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 300,
            child: Card(   
               elevation: 15,
               clipBehavior: Clip.antiAlias,
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
              

              child: FadeInImage(
                image: NetworkImage('https://img.culturacolectiva.com/featured/2018/11/12/1542050827423/muere-stan-lee-12-noviembre-medium.jpg'),
                placeholder: AssetImage('assets/loading.gif'),
                fadeInDuration: Duration(milliseconds: 300),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: ()=>Navigator.pop(context),
      ),
    );
  }
}

