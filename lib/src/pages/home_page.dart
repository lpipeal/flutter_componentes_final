import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/provider/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
          );
        }

        
      
        Widget _lista() {

            return FutureBuilder(
              future: menuProvider.cargarData(),
              initialData: [],
              builder: (BuildContext context, AsyncSnapshot <List<dynamic>>snapshot) {
                
                  print('builder');                  
                  print(snapshot.data);

                    return ListView(
                      children: _listaItems(snapshot.data, context)
                     );
              },
            );


            
        }


        // Widget _lista() {
        //    menuProvider.cargarData().then((opciones){
        //       print('_lista');
        //       print(opciones);

        //    });
        //     return ListView(
        //         children: _listaItems()
        //     );
        //   }
                
            List<Widget> _listaItems(List<dynamic> data, BuildContext context) {

                final List<Widget> opciones =[]; 

                data.forEach((opt) { 

                    
                    print(opt['ruta']);
                    final WidgetTemp = ListTile(
                      
                      title: Text(opt['texto']),
                      leading: getIcon(opt['icon']),
                      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
                      onTap: () {

                          // final route = MaterialPageRoute(
                          //   builder: (context) => AlertPage(),
                          // );

                          // Navigator.push(context, route);
                          Navigator.pushNamed(context, opt['ruta']);

                      },
                    );
                  opciones..add(WidgetTemp)
                          ..add(Divider());
                });   

                return opciones;
                
            }
}