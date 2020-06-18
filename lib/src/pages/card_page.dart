import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20) ,
        //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20) ,
        children: <Widget>[
            _getCardTipo1(),
            SizedBox(height: 30.0,),
            _getCardTipo2(),
              
                    ],
                  )
                );
                  
              }
                  
                   Widget  _getCardTipo1() {
            
                     return Card(
                       child: Column(
                         children: [
                           ListTile(
                             title: Text('Titulo Principal'),
                             leading: Icon(Icons.photo_album, color: Colors.blue[200],),
                             subtitle: Text('is simply dummy ok. It has sly five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
                           ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                               FlatButton(
                                 child: Text('Cancelar'),
                                 onPressed: (){}),
                               FlatButton(
                                 child: Text('Ok'),
                                 onPressed: (){})
            
                            ],
                          ) 
                         ],
                       ),
                     );
                    }
            
              Widget _getCardTipo2() {
                  return Card(
                    child: Column(
                      children: 
                      
                      <Widget>[
                        FadeInImage(
                          placeholder: AssetImage('assets/loading.gif'), 
                          image: NetworkImage('https://1.bp.blogspot.com/-1y6G2P0cklw/Vq00d8oxg7I/AAAAAAAC8jk/e30sNTkSFAE/s1600/Byodo-en%2Bel%2Btemplo.%2BKyoto%252C%2BJap%25C3%25B3n%2Blugares%2Bhermosos%2Bfondos%2By%2Bwallpapers.jpg'),
                          fadeInDuration: Duration(milliseconds: 200),
                          height: 200,
                          fit: BoxFit.cover,
                          ),
                          

                        // Image(
                        //   image: NetworkImage('https://1.bp.blogspot.com/-1y6G2P0cklw/Vq00d8oxg7I/AAAAAAAC8jk/e30sNTkSFAE/s1600/Byodo-en%2Bel%2Btemplo.%2BKyoto%252C%2BJap%25C3%25B3n%2Blugares%2Bhermosos%2Bfondos%2By%2Bwallpapers.jpg'),
                        // ),
                        
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text('bordes redondeados'))
                      ],
                    ),
                  );

              }



}