import 'package:flutter/material.dart';
import 'package:movilcare/emergencia_paramedicos/emergencia_paramedicoscreen.dart';
import 'package:movilcare/emergencia_paramedicos/emergenciavaci.dart';
import 'package:movilcare/homaparamedico.dart';
import 'package:movilcare/home.dart';
import 'package:movilcare/splashregisatencion.dart';

class RegistrarAtencion extends StatefulWidget {
  static String id = 'registraratencion';

  @override
  _RegistarAtencion createState() => _RegistarAtencion();
}

class _RegistarAtencion extends State<RegistrarAtencion> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'REGISTRO DE ATENCIÓN PREHOSPITALARIA',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.asset(
                  'images/cruz.png',
                  height: 100.0,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              _presionTextField(),
              SizedBox(
                height: 15.0,
              ),
              _saturacionTextField(),
              SizedBox(
                height: 15.0,
              ),
              _descripcionTextField(),
              SizedBox(
                height: 15.0,
              ),
              _bottonGuardar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _presionTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.person),
            hintText: '',
            labelText: 'PRESIÓN',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _saturacionTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.health_and_safety),
            hintText: '',
            labelText: 'SATURACIÓN',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _descripcionTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.text_fields),
            hintText: '',
            labelText: 'DESCRIPCIÓN',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _bottonGuardar() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text(
              'Guardar',
              style: TextStyle(
                fontSize: 16.0,
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
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Aviso"),
                    content: Text("¿Esta seguro de guardar los datos?"),
                    actions: [
                      TextButton(
                          onPressed: () => {Navigator.pop(context, false)},
                          child: Text("No")),
                      TextButton(
                          onPressed: () => {
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (_) => SplashAppRA(),
                                )),
                              },
                          child: Text("Si")),
                    ],
                    elevation: 24,
                    backgroundColor: Colors.brown[200],
                  );
                });
          });
    });
  }
}
