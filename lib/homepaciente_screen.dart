import 'package:flutter/material.dart';
import 'package:movilcare/asistentevirtual.dart';
import 'package:movilcare/cita_medica.dart';
import 'package:movilcare/emergencia_paciente.dart';
//import 'package:movilcare/home.dart';
import 'package:movilcare/loginpaciente.dart';
import 'package:movilcare/loginparamedico.dart';
import 'asistentevirtual.dart';

class HomePacienteScreen extends StatefulWidget {
  static String id = 'inicio';

  @override
  _HomePacienteScreenState createState() => _HomePacienteScreenState();
}

class _HomePacienteScreenState extends State<HomePacienteScreen> {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(
          automaticallyImplyLeading: false, 
          title: Text(
            '            CLÍNICA VANCUVER',
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        body:Center(
        child: Container(
          
          /*width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                const Color(0xff9e9e9e),
                const Color(0xffeeeeee),
              ]              
              )),*/
          //padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              
              SizedBox(
                height: 55.0,
              ),
              _bottonCita(),
              SizedBox(
                height: 25.0,
              ),
              _bottonAsistente(),
              SizedBox(
                height: 25.0,
                
              ),
              _bottonEmergencia(),
              
              
            ],
          ),
        ),
      ),),
    );
  }

  

  Widget _bottonCita() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
            child: Text(
              'Cita médica',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.lightBlueAccent,
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
              builder: (_) => CitaMedicaScreen(),
            ));
          }
          );
    });
  }
   Widget _bottonAsistente() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
            child: Text(
              'Asistente Virtual',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.lightBlueAccent,
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (_) => AsistenteVirtualScreen(),
            ));
          });
    });
  }
  Widget _bottonEmergencia() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
            child: Text(
              'Emergencia',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.lightBlueAccent,
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (_) => EmergenciaPaciente(),
            ));
          });
    });
  }
}