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
            SizedBox(height: 15.0,),
            _getCardTipo2(),
            SizedBox(height: 15.0,),
            _getCardTipo1(),
            SizedBox(height: 15.0,),
            _getCardTipo2(),
            SizedBox(height: 15.0,),
            _getCardTipo1(),
            SizedBox(height: 15.0,),
            _getCardTipo2(),
            SizedBox(height: 15.0,),
            _getCardTipo1(),
            SizedBox(height: 15.0,),
            _getCardTipo2(),
            SizedBox(height: 15.0,),
             
                    ],
                  )
                );
                  
              }
                  
                   Widget  _getCardTipo1() {
            
                     return Card(
                       elevation: 5,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
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
                                 color: Colors.red,
                                 shape: StadiumBorder(),
                                 textColor: Colors.white,
                                 
                                 onPressed: (){}),
                                  SizedBox(width: 10,),
                               FlatButton(
                                 child: Text('Ok'),
                                 color: Colors.green[200],
                                 shape: StadiumBorder(),
                                 textColor: Colors.white,
                                 onPressed: (){}),
                                 SizedBox(width: 20,),
                            ],
                          ) 
                         ],
                       ),
                     );
                    }
            
              Widget _getCardTipo2() {
                  return Card(
                      elevation: 5,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                      shadowColor: Colors.amber,
          
                      child: Column(
                        children: 
                        <Widget>[
                          FadeInImage(
                            placeholder: AssetImage('assets/loading.gif'), 
                            image: NetworkImage('https://1.bp.blogspot.com/-1y6G2P0cklw/Vq00d8oxg7I/AAAAAAAC8jk/e30sNTkSFAE/s1600/Byodo-en%2Bel%2Btemplo.%2BKyoto%252C%2BJap%25C3%25B3n%2Blugares%2Bhermosos%2Bfondos%2By%2Bwallpapers.jpg'),
                            fadeInDuration: Duration(milliseconds: 200),
                            height: 230,
                            width: 400,
                            fit: BoxFit.cover,  
                            ),
                            

                          // Image(
                          //   image: NetworkImage('https://1.bp.blogspot.com/-1y6G2P0cklw/Vq00d8oxg7I/AAAAAAAC8jk/e30sNTkSFAE/s1600/Byodo-en%2Bel%2Btemplo.%2BKyoto%252C%2BJap%25C3%25B3n%2Blugares%2Bhermosos%2Bfondos%2By%2Bwallpapers.jpg'),
                          // ),
                          Container(
                            child: Text('Texto de Imagen'),
                            decoration: BoxDecoration(
                              boxShadow:<BoxShadow>[
                                BoxShadow(
                                  blurRadius:25,
                                  spreadRadius: 0.8,
                                  offset: Offset(0.0,20)
                                )
                              ] 
                            ),
                          ),
                        
                        ],
                      ),
                    
                  );

              }



}