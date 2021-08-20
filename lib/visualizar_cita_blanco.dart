import 'package:flutter/material.dart';
import 'package:movilcare/cita.dart';
import 'package:movilcare/emergencia_paramedicos/mostrar_emergencia.dart';
import 'package:movilcare/inmemory_paciente.dart';
import 'package:movilcare/paciente.dart';
import 'package:movilcare/widgest/buttonatencionpre.dart';

import 'homepaciente.dart';
import 'in_memory_cita.dart';
class VisVacio extends StatefulWidget {
  const VisVacio({ Key? key }) : super(key: key);

  @override
  _VisVacioState createState() => _VisVacioState();
}

class _VisVacioState extends State<VisVacio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, //para que no haya regreso
          title: Text(
            'CITAS MÉDICAS',
            
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
            Text('No existen citas agendadas', style: TextStyle(color: Colors.black,fontSize: 20,),textAlign: TextAlign.center,),
            SizedBox(
              height: 55.0,
              width: 10,
              
            ),
            _bottoninicio(),
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
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (_) => HomePaciente(),
          ));
        });
  });
}
