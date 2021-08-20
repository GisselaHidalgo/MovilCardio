import 'package:flutter/material.dart';
import 'package:movilcare/cita.dart';
import 'package:movilcare/emergencia_paramedicos/mostrar_emergencia.dart';
import 'package:movilcare/inmemory_paciente.dart';
import 'package:movilcare/paciente.dart';
import 'package:movilcare/splashcancelarcita.dart';
import 'package:movilcare/visualizar_cita_blanco.dart';
import 'package:movilcare/widgest/buttonatencionpre.dart';

import 'homepaciente.dart';
import 'in_memory_cita.dart';
import 'inicio.dart';

class VisualizarCita extends StatelessWidget {
  const VisualizarCita({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, 
        title: Text(
          'CITAS MÉDICAS',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 6 / 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: citas.length,
        itemBuilder: (context, index) {
          final cita = citas[index];
          return _VisualizarCita(
            cita: cita,
          );
        },
      ),
    );
  }
}

class _VisualizarCita extends StatelessWidget {
  const _VisualizarCita({Key? key, required this.cita}) : super(key: key);
  final Cita cita;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(5.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              //child: Expanded(
              child: Column(
                children: [
                  Text(
                    cita.doctor,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text(''),
                  //AtencionScreen(),
                  Text(
                    cita.fecha,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 5),
                  _bottonCancelar(),
                  //_bottonAtras(),
                  Container(
                      //child: Expanded(
                      child: Column(
                    children: [
                      _bottonAtras(),
                    ],
                  )),
                  //)
                ],
              ),
              // _bottonAtras(),
            ),
            // ),
          ],
        ),
      ),
    );
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
          color: Colors.redAccent,
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Aviso"),
                    content: Text("¿Esta seguro de Cancelar la cita médica?"),
                    actions: [
                      TextButton(
                          onPressed: () => {Navigator.pop(context, false)},
                          child: Text("No")),
                      TextButton(
                          onPressed: () => {
                               
                                                Navigator.of(context)
                                                    .pushReplacement(
                                                        MaterialPageRoute(
                                                  builder: (_) => SplashAppCC(),
                                                )),
                              },
                          child: Text("Si"))
                    ],
                    elevation: 24,
                    backgroundColor: Colors.brown[200],
                  );
                });
          });
    });
  }
}
