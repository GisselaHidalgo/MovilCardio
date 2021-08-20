import 'package:flutter/material.dart';
import 'package:movilcare/emergencia_paramedicos/registrar_atencion_screen.dart';
import 'package:movilcare/inmemory_paciente.dart';
import 'package:movilcare/widgest/buttonatencionpre.dart';

import '../paciente.dart';

import 'package:flutter/material.dart';
import 'package:movilcare/cita.dart';
import 'package:movilcare/emergencia_paramedicos/mostrar_emergencia.dart';
import 'package:movilcare/inmemory_paciente.dart';
import 'package:movilcare/paciente.dart';
import 'package:movilcare/widgest/buttonatencionpre.dart';

class EmerVacio extends StatefulWidget {
  const EmerVacio({ Key? key }) : super(key: key);

  @override
  _VacioState createState() => _VacioState();
}

class _VacioState extends State<EmerVacio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, //para que no haya regreso
          title: Text(
            'EMERGENCIAS',
            
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Container(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('No existen emergencias pendientes', style: TextStyle(color: Colors.black,fontSize: 20,),textAlign: TextAlign.center,),
            SizedBox(
              height: 55.0,
              width: 10,
              
            ),
            //_bottoninicio(),
          ],
          //_userTextField(),
        ))));
  }
}



Widget _bottoninicio() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return RaisedButton(
      
        child:Column(
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
             // crossAxisAlignment: CrossAxisAlignment.center,
             // mainAxisSize: MainAxisSize.max,
              children: [
                
                
              //padding: 
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0,),
      
                child: Text(
                  'Inicio ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    
                  ),
                  
                ),
              ),
               ]
            ),
          ],
        ),
         
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10.0,
        color: Colors.lightGreen,
        onPressed: () {
          //Navigator.of(context).pushReplacement(MaterialPageRoute(
            //builder: (_) => /*HomeParamedico()*/,
          //));
        });
  });
}
