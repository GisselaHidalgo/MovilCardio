import 'package:flutter/material.dart';
import 'package:movilcare/emergencia_paramedicos/emergencia_paramedicoscreen.dart';
import 'package:movilcare/homaparamedico.dart';
import 'package:movilcare/home.dart';
import 'package:movilcare/listarpacientesatendidos_screen.dart';

class MostrarAtencion extends StatefulWidget {
  static String id = 'mostraratencion';

  @override
  _MostrarAtencion createState() => _MostrarAtencion();
}

class _MostrarAtencion extends State<MostrarAtencion> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, 
          title: Text(
            'HOJA DE ATENCIÓN PREHOSPITALARIA',
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold),
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
              Expanded(
                  child: Column(children: [
                Text(''),
                Text(
                  'Presión: 140',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Text(''),
                Text(
                  'Saturación: 60',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Text(''),
                Text(
                  'Descripción: '
                  'El paciente presenta taquicardia',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ])),

              /*SizedBox(
                
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
              ),*/
              _bottonGuardar(),
            ],
          ),
        ),
      ),
    );
  }

  /*Widget _presionTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.person),
            labelText: 'PRESIÓN ',
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
        child: Text(
          /*keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.health_and_safety),
            hintText: 'SATURACIÓN',
          ),
          onChanged: (value) {}textAlign: TextBox(),,*/
          TextDecoration.none.toString(),
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

            labelText: 'DESCRIPCIÓN',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }*/
  Widget _bottonGuardar() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text(
              'Salir',
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
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (_) => HomeParamedico(),
            ));
          });
    });
  }
}
