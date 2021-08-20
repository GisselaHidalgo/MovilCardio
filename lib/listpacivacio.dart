import 'package:flutter/material.dart';
import 'package:movilcare/emergencia_paramedicos/mostrar_emergencia.dart';
import 'package:movilcare/inmemory_paciente.dart';
import 'package:movilcare/paciente.dart';
import 'package:movilcare/widgest/buttonatencionpre.dart';

class ListPacientesAtendidosVacio extends StatelessWidget {
  const ListPacientesAtendidosVacio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, 
        title: Text(
          'PACIENTES ATENDIDOS',
          style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
          child: Container(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('No existen pacientes atendidos', style: TextStyle(color: Colors.black,fontSize: 20,),textAlign: TextAlign.center,),
            SizedBox(
              height: 55.0,
              width: 10,
              
            ),
            //_bottoninicio(),
          ],
          //_userTextField(),
        )))
    );
  }
}

