import 'package:flutter/material.dart';
import 'package:movilcare/emergencia_paramedicos/registrar_atencion_screen.dart';
import 'package:movilcare/inmemory_paciente.dart';
import 'package:movilcare/splashenviaremer.dart';
import 'package:movilcare/widgest/buttonatencionpre.dart';
import '../paciente.dart';
import 'homepaciente.dart';
import 'package:flutter/material.dart';
import 'package:movilcare/home.dart';
import 'package:movilcare/homepaciente.dart';
import 'package:movilcare/inicio.dart';

class EmergenciaPaciente extends StatefulWidget {
  static String id = 'loginpaciente';

  @override
  _EmergenciaPacienteState createState() => _EmergenciaPacienteState();
}

class _EmergenciaPacienteState extends State<EmergenciaPaciente> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false, 
        title: Text(
          'EMERGENCIA',
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
                  'images/mapa.jpg',
                  height: 250.0,
                ),
              ),
              SizedBox(
                height: 1.0,
              ),
              _callepTextField(),
              SizedBox(
                height: 15.0,
              ),
              _callesTextField(),
              SizedBox(
                height: 5.0,
              ),
              _casaTextField(),
              SizedBox(
                height: 5.0,
              ),
              _bottonEnviar(),
              SizedBox(
                height: 5.0,
              ),
              _bottonAtras(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _callepTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          //controller: cedcontroller,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.streetview),
            hintText: '',
            labelText: 'Calle principal',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _callesTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          //controller: contraController,
          keyboardType: TextInputType.emailAddress,
          //obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.streetview),
            hintText: '',
            labelText: 'Calle secundaria',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  /*Widget _rolDownField() {
    DropdownButtonFormField()
  }*/
  Widget _casaTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          //controller: cedcontroller,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.house),
            hintText: '   ',
            labelText: 'Num. de casa',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }


  Widget _bottonEnviar() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 15.0),
            child: Text(
              'Enviar',
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
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Aviso"),
                    content: Text("¿Esta seguro de enviar la ubicación?"),
                    actions: [
                      TextButton(
                          onPressed: () => {Navigator.pop(context, false)},
                          child: Text("No")),
                      TextButton(
                          onPressed: () => {
                               
                                                Navigator.of(context)
                                                    .pushReplacement(
                                                        MaterialPageRoute(
                                                  builder: (_) => SplashAppEE(),
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
