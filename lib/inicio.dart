import 'package:flutter/material.dart';
//import 'package:movilcare/home.dart';
import 'package:movilcare/loginpaciente.dart';
import 'package:movilcare/loginparamedico.dart';

class Inicio extends StatefulWidget {
  static String id = 'inicio';

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
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
                Flexible(
                  child: Image.asset(
                    'images/logo2.png',
                    height: 250.0,
                  ),
                ),
                SizedBox(
                  height: 55.0,
                ),
                _bottonPaciente(),
                SizedBox(
                  height: 15.0,
                ),
                _bottonParamedico(),
                SizedBox(
                  height: 5.0,
                  width: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottonPaciente() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
            child: Text(
              'Paciente',
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
              builder: (_) => LoginPaciente(),
            ));
          });
    });
  }

  Widget _bottonParamedico() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
            child: Text(
              'Paramédico',
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
              builder: (_) => LoginParamedico(),
            ));
          });
    });
  }
}
