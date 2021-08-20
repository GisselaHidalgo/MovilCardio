import 'package:flutter/material.dart';
import 'package:movilcare/emergencia_paramedicos/registrar_atencion_screen.dart';
import 'package:movilcare/homepaciente.dart';
import 'package:movilcare/inmemory_paciente.dart';
import 'package:movilcare/widgest/buttonatencionpre.dart';

import '../paciente.dart';
import 'homepaciente.dart';

class AsistenteVirtualScreen extends StatelessWidget {
  const AsistenteVirtualScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, 
        title: Text(
          'ASISTENTE VIRTUAL',
          style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),

      //body: _EmptyEmergencia(),
      body: _Asistente(),
    );
  }
}

class _Asistente extends StatelessWidget {
  const _Asistente({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset(
            'images/feliz.png',
            height: 30,
          ),
        ),
        const SizedBox(height: 50),
        Text(
          'SITIO EN CONSTRUCCIÓN',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ),
        _bottonAtras(),
      ],
    );
  }

  Widget _bottonAtras() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
