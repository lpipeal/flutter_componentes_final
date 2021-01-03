import 'package:flutter/material.dart';


class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18, color: Colors.grey);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Basico!!'),
      // ), 
      body: SingleChildScrollView(
        child: Column(
           children: <Widget>[
  
            _crearImagen(),
            _crearTitulos(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
                              
            ],
          ),
        ),
     );
              }
            
              Widget _crearImagen(){
            
                  return FadeInImage(
                          fadeInDuration: Duration(milliseconds: 300),
                          placeholder: AssetImage('assets/loading.gif'), 
                          image: NetworkImage('https://images.pexels.com/photos/1619317/pexels-photo-1619317.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'));
              }
            
             Widget _crearTitulos() {
                return SafeArea(
              child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                  children: <Widget>[
                    
                    Expanded(
                     child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Oeschinen Lake',style: estiloTitulo,),
                            SizedBox(height: 7,),
                            Text('Kanderteg, Switzerland',style: estiloSubTitulo,)
                          ], 
                      ),
                    ),

                    Icon(Icons.star,color: Colors.red, size: 30,),
                    Text('41',style: TextStyle(fontSize: 20),)

                  ],
              ),
            ),
                );    
              }

  Widget _crearAcciones() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          
          _accion(Icons.call, 'CALL'),
          _accion(Icons.near_me, 'ROUTE'),
          _accion(Icons.share, 'SHARE'),
            
        ],
      ),
    );
  }

  Widget _accion(IconData icon, String texto) {
      return   Column(
            children: [
                Icon(icon, color: Colors.blue, size: 40,),
                SizedBox(height: 5,),
                Text(texto, style: TextStyle(fontSize: 15, color: Colors.blue),),
            ],
          );

  }

 Widget _crearTexto() {

   return SafeArea(
        child: Container(
       padding: EdgeInsets.symmetric(horizontal: 40,),
       child: Text('Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',
          textAlign: TextAlign.justify,
          ),
       
       ),
   );
     
 }

}

// Icon(Icons.location_on,color: Colors.blue,),
// Icon(Icons.share, color: Colors.blue,),