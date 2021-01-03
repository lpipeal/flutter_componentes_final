import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 
   String _nombre= '';
   String _email= '';
   String _password= '';
   String _fecha= '';
   String _opcionSeleccionada='volar';

   List <String>_poderes = ['volar','Rayos X', 'Super Aliento','Super Fuerza'];

   TextEditingController _inputFieldDateController = new TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Inputs de texto'),
      ),
      body: _bodyContent() 
    ); 
  } 

    Widget _bodyContent(){
        return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
                children: <Widget>[
                    _crearInput(),
                    Divider(),
                    _crearInput2(),
                    Divider(),
                    _crearPersona(),
                    Divider(),
                    _crearEmail(),
                    Divider(),
                    _crearPassword(),
                    Divider(),
                    _crearDatePicker(context),
                    Divider(),
                    _crearDropDown(),
                ],
            ),
        );
    }

     Widget _crearInput() {

        return TextField(
          autofocus: true,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            counter: Text('${_nombre.length}'),
            hintText: 'Nombre de la persona',
            labelText: 'Nombre',
            helperText: 'Poner solo nombre',
            suffixIcon: Icon(Icons.accessibility),
            icon: Icon(Icons.account_circle),
            prefixIcon: Icon(Icons.account_circle),
          ),
          
          onChanged: (valor){
            
            setState(() {
              _nombre =valor;
              print(_nombre);  
            });
          },
        );
     }

  Widget _crearPersona() {

      return ListTile(
        
        title: Text('Nombre es: $_nombre'),
        subtitle: Text('Email es: $_email'),
        trailing: Text(_opcionSeleccionada),
        
      );

  }

  Widget _crearInput2(){
          return Container(
            height: 40,
            width: 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 1),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Usuario',
                  prefixIcon: Icon(Icons.account_circle),
                  
                )
               
              ),
            ),
            
          );
     }

  Widget _crearEmail() {

        return TextField(
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            counter: Text('${_email.length}'),
            hintText: 'Digite Correo Electronico',
            labelText: 'Correo',
            helperText: 'Poner solo correo electronico',
            suffixIcon: Icon(Icons.alternate_email),
            icon: Icon(Icons.email),
            prefixIcon: Icon(Icons.email),
          ),
          onChanged: (valor){
            
            setState(() {
              _email =valor;
              print(_email);  
            });
          },
        );
     }      


  Widget _crearPassword() {

        return TextField(
          autofocus: true,
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            counter: Text('${_password.length}'),
            hintText: 'Pasword',
            labelText: 'Password',
            helperText: 'solo password',
            suffixIcon: Icon(Icons.lock),
            icon: Icon(Icons.lock_open),
            prefixIcon: Icon(Icons.lock),
          ),
          onChanged: (valor){
            
            setState(() {
              _password =valor;
              print(_password);  
            });
          },
        );
     }         

  Widget _crearDatePicker(BuildContext context) {

        return TextField(
          autofocus: true,
          enableInteractiveSelection: false,
          controller: _inputFieldDateController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            hintText: 'Fecha de nacimiento',
            labelText: 'Fecha de nacimiento',
            suffixIcon: Icon(Icons.perm_contact_calendar),
            icon: Icon(Icons.calendar_today),
            prefixIcon: Icon(Icons.calendar_today),
          ),
          onTap: (){
             FocusScope.of(context).requestFocus(new FocusNode()); 
            _selectDate(context);
          },
        );
     }

  Future _selectDate(BuildContext context) async {
     DateTime picked = await showDatePicker(
       context: context, 
       initialDate: new DateTime.now(), 
       firstDate:DateTime(2018), 
       lastDate: DateTime(2025),
       locale: Locale('es', 'CO')
       ); 
     if(picked!=null){
       setState(() {
         _fecha=picked.toString();
         _inputFieldDateController.text=_fecha;
       });
     }
  }  

  List<DropdownMenuItem<String>>getOpcionesDropdown(){

    List<DropdownMenuItem<String>> lista = new List();
      _poderes.forEach((poder) { 
          lista.add(DropdownMenuItem(
            child: Text(poder),
            value: poder,
          ));
      });

      return lista;
  }

  Widget _crearDropDown(){

     return Row(
       children: <Widget>[
         Icon(Icons.select_all),
         SizedBox(width: 50,),
            Expanded(
                    child: DropdownButton(
                    items: getOpcionesDropdown(),
                    value: _opcionSeleccionada,
                    onChanged: (opt){
                    setState(() {
                      _opcionSeleccionada=opt;
                     print(opt);
                    });
                   
                },
           ),
         ),
       ],
     );

   }  

}