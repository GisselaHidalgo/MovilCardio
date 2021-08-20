import 'package:flutter/material.dart';
import 'package:movilcare/cita_medica.dart';
import 'package:movilcare/splashagendarcita.dart';

import 'homepaciente.dart';

class AgendarCita extends StatefulWidget {
  static String id = 'agendarcita';
  @override
  _AgendarCitaState createState() => _AgendarCitaState();
}

class _AgendarCitaState extends State<AgendarCita> {
  List<DropdownMenuItem<String>> listDrop = [];
  String? selected = null;
  void loadData() {
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: new Text('Ponce Cheddy'),
      value: 'Ponce Cheddy',
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('Barrionuevo Luis'),
      value: 'Barrionuevo Luis',
    ));
  }

  List<DropdownMenuItem<String>> listDrop1 = [];
  String? selected1 = null;
  void loadData1() {
    listDrop1 = [];
    listDrop1.add(new DropdownMenuItem(
      child: new Text('21/08/2021 8:00 a.m.'),
      value: '21/08/2021 8:00 a.m.',
    ));
    listDrop1.add(new DropdownMenuItem(
      child: new Text('21/08/2021 9:00 a.m.'),
      value: '21/08/2021 9:00 a.m.',
    ));
    listDrop1.add(new DropdownMenuItem(
      child: new Text('21/08/2021 10:00 a.m.'),
      value: '21/08/2021 10:00 a.m.',
    ));
    listDrop1.add(new DropdownMenuItem(
      child: new Text('21/08/2021 11:00 a.m.'),
      value: '21/08/2021 11:00 a.m.',
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    loadData1();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '         AGENDAR CITA MÉDICA',
            style: TextStyle(
                fontSize: 25,
                color: Color(0xffd6d6d6),
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Image.asset(
                    'images/logo2.png',
                    height: 200.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  //child: Expanded(
                  child: new Center(
                    child: new DropdownButton(
                      dropdownColor: Color(0xffd6d6d6),
                      value: selected,
                      items: listDrop,
                      hint: new Text('Doctor'),
                      onChanged: (value) {
                        selected = value as String?;
                        setState(() {});
                      },
                    ),
                  ),
                ),
                //),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                    //child: Expanded(
                    child: new Center(
                  child: new DropdownButton(
                    dropdownColor: Color(0xffd6d6d6),
                    value: selected1,
                    items: listDrop1,
                    hint: new Text('Horario'),
                    onChanged: (value) {
                      selected1 = value as String?;
                      setState(() {});
                    },
                  ),
                )),
                //),
                SizedBox(
                  height: 15.0,
                ),
                _bottonGuardar(),
                SizedBox(
                  height: 5.0,
                ),
                _bottonAtras(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottonGuardar() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text(
              'Agendar',
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
                    content: Text("¿Esta seguro de agendar la cita médica?"),
                    actions: [
                      TextButton(
                          onPressed: () => {Navigator.pop(context, false)},
                          child: Text("No")),
                      TextButton(
                          onPressed: () => {
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (_) => SplashAppAC(),
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
