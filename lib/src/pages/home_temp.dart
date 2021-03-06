import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {
 
  final opciones=['Uno', 'Dos','Tres', 'Cuatro','Cinco','Seis','Siete','Ocho','Nueve'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
          // children: _crearItems(),
          children: _crearItemsCorta()
          
      ),
    );
  }

  List <Widget> _crearItems(){
        
        List<Widget> lista = new List<Widget>();

        for (String opt in opciones) {
          final tempWidget = ListTile(
            title: Text(opt),   
          );

          lista..add(tempWidget)
                ..add(Divider(height:100 ,color:Colors.black));
        } 
    return lista;
  }


  List<Widget> _crearItemsCorta(){

    return opciones.map((item){
  
        return Column(
          children: [
            ListTile(
              title: Text('$item !!'),
              subtitle: Text('Subtitulo'),
              leading: Icon(Icons.account_balance_wallet),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            Divider(height: 50,color: Colors.black45,)
          ],
        );

    }).toList();


    // return widgets;
  }



}