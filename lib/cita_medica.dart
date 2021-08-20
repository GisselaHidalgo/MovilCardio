import 'package:flutter/material.dart';
import 'package:movilcare/agendar_cita.dart';
import 'package:movilcare/asistentevirtual.dart';
import 'package:movilcare/emergencia_paciente.dart';
import 'package:movilcare/homepaciente_screen.dart';
//import 'package:movilcare/home.dart';
import 'package:movilcare/loginpaciente.dart';
import 'package:movilcare/loginparamedico.dart';
import 'package:movilcare/visualizar_cita.dart';
import 'asistentevirtual.dart';
import 'homepaciente.dart';

class CitaMedicaScreen extends StatefulWidget {
  static String id = 'inicio';

  @override
  _CitaMedicaScreenState createState() => _CitaMedicaScreenState();
}

class _CitaMedicaScreenState extends State<CitaMedicaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, 
          title: Text(
            'CITA MÉDICA',
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
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
                _bottonAgendar(),
                SizedBox(
                  height: 25.0,
                ),
                _bottonVisualizar(),
                SizedBox(
                  height: 25.0,
                ),
                /*_bottonCancelar(),
                SizedBox(
                  height: 45.0,
                ),*/
                _bottonAtras()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottonAgendar() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
            child: Text(
              'Agendar Cita Médica',
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
              builder: (_) => AgendarCita(),
            ));
          });
    });
  }

  Widget _bottonVisualizar() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
            child: Text(
              'Visualizar Cita Médica',
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
              builder: (_) => VisualizarCita(),
            ));
          });
    });
  }

  Widget _bottonCancelar() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
            child: Text(
              'Cancelar Cita Médica',
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
            /*Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (_) => EmergenciaPacienteScreen(),
            ));*/
          });
    });
  }

  Widget _bottonAtras() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
            child: Text(
              'Atrás',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 20.0,
          color: Color(0xff7cb342),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (_) => HomePaciente(),
            ));
          });
    });
  }
}
