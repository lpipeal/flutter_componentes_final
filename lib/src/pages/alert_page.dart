import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: ()=> _mostrarAlert(context),
        ),
      ),
     
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context){

      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {

          return AlertDialog(
            title: Text('Titulo Alerta'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Este es el contenido de la caja de alerta'),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: <Widget>[
               FlatButton(
                 child: Text('Cancelar'),
                 onPressed: ()=> Navigator.of(context).pop(),
               ),
               FlatButton(
                 child: Text('Ok'),
                 onPressed: ()=> Navigator.of(context).pop(),
               ),    
            ],
          );
        },
        );

  }



}
