import 'package:flutter/material.dart';
import 'package:movilcare/emergencia_paramedicos/emergencia_paramedicoscreen.dart';
import 'package:movilcare/homepaciente_screen.dart';
import 'package:movilcare/loginpaciente.dart';
import 'package:movilcare/loginparamedico.dart';

import 'listarpacientesatendidos_screen.dart';

class HomePaciente extends StatefulWidget {
  @override
  _HomePacienteState createState() => _HomePacienteState();
}

class _HomePacienteState extends State<HomePaciente> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: IndexedStack(
            index: currentIndex,
            children: [
              HomePacienteScreen(),
              Text('currentIndex2:$currentIndex'),
            ],
          ),
        ),
        _CardioNavigationBar(
          index: currentIndex,
          onIndexSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          key: null,
        ),
      ],
    ));
  }
}

class _CardioNavigationBar extends StatelessWidget {
  final int index;
  final ValueChanged<int> onIndexSelected;
  const _CardioNavigationBar({
    Key? key,
    required this.index,
    required this.onIndexSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFFffffff),
          border: Border.all(color: Color(0xFFD6D6D6), width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                child: IconButton(
                  icon: Icon(
                    Icons.home,
                    color: index == 0 ? Color(0XFF1565C0) : Color(0xff607d8b),
                  ),
                  onPressed: () => onIndexSelected(0),
                ),
              ),
              Material(
                child: IconButton(
                    icon: Icon(Icons.door_back_rounded),
                    color: index == 2 ? Color(0XFF1565C0) : Color(0xff607d8b),
                    onPressed: () {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Aviso"),
                              content: Text("¿Desea salir del sistema?"),
                              actions: [
                                TextButton(
                                    onPressed: () =>
                                        {Navigator.pop(context, false)},
                                    child: Text("No")),
                                TextButton(
                                    onPressed: () => {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                            builder: (_) => LoginPaciente(),
                                          )),
                                        },
                                    child: Text("Si"))
                              ],
                              elevation: 24,
                              backgroundColor: Colors.brown[200],
                            );
                          });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
