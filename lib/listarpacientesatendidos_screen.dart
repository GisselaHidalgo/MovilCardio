import 'package:flutter/material.dart';
import 'package:movilcare/emergencia_paramedicos/mostrar_emergencia.dart';
import 'package:movilcare/inmemory_paciente.dart';
import 'package:movilcare/paciente.dart';
import 'package:movilcare/widgest/buttonatencionpre.dart';

class ListPacientesAtendidosScreen extends StatelessWidget {
  const ListPacientesAtendidosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, 
        title: Text(
          'PACIENTES ATENDIDOS',
          style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(7),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: pacientes.length,
        itemBuilder: (context, index) {
          final paciente = pacientes[index];
          return _ItemPacienteAtendido(
            paciente: paciente,
          );
        },
      ),
    );
  }
}

class _ItemPacienteAtendido extends StatelessWidget {
  const _ItemPacienteAtendido({Key? key, required this.paciente})
      : super(key: key);
  final Paciente paciente;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Color(0xffd6d6d6),
      child: Padding(
        padding: const EdgeInsets.all(5.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    paciente.ci,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),textAlign: TextAlign.center,
                  ),
                  Text(''),
                  //AtencionScreen(),
                  Text(
                    paciente.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 1),
                  Text(''),
                  Text(
                    paciente.telefono,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 1),
                  Text(''),
                  Text(
                    paciente.direccion,
                    /*strutStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),*/
                   style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 1),
                  Text(''),
                  Text(
                    paciente.casa,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 1),
                  Text(''),
                ],
              ),
            ),
            ButtonAtencionPre(
              text: 'Hoja de Atención',
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (_) => MostrarAtencion(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
