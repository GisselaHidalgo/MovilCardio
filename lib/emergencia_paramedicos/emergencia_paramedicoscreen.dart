import 'package:flutter/material.dart';
import 'package:movilcare/emergencia_paramedicos/registrar_atencion_screen.dart';
import 'package:movilcare/inmemory_paciente.dart';
import 'package:movilcare/widgest/buttonatencionpre.dart';

import '../paciente.dart';

class EmergenciaParamedicoScreen extends StatelessWidget {
  const EmergenciaParamedicoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, 
        title: Text(
          'EMERGENCIAS',
          style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold
                ),
          ),),
        
    
      //body: _EmptyEmergencia(),
      body: _FullEmergencia(),
    );
  }
}

class _FullEmergencia extends StatelessWidget {
  const _FullEmergencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            //color: Colors.red,
            child: ListView.builder(
                itemCount: pacientes.length,
                scrollDirection: Axis.vertical,
                itemExtent: 300,
                itemBuilder: (context, index) {
                  final paciente = pacientes[index];
                  return _EmergenciaPaciente(
                    paciente: paciente,
                  );
                }),
          ),
        ),
      ],
    );
  }
}

class _EmptyEmergencia extends StatelessWidget {
  const _EmptyEmergencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/feliz.png',
          height: 100,
        ),
        const SizedBox(height: 20),
        Text('NO HAY EMERGENCIAS POR ATENDER', textAlign: TextAlign.center),
      ],
    );
  }
}

class _EmergenciaPaciente extends StatelessWidget {
  const _EmergenciaPaciente({Key? key, required this.paciente})
      : super(key: key);
  final Paciente paciente;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Color(0xffd6d6d6),
        child: Padding(
          padding: const EdgeInsets.all(6.5),
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
                      ),
                    ),
                    Text(''),
                    //AtencionScreen(),
                    Text(
                      paciente.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(''),
                    Text(
                      paciente.telefono,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(''),
                    Text(
                      paciente.direccion,
                      /*strutStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),*/
                    
                      style: Theme.of(context).textTheme.overline!.copyWith(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      paciente.casa,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(''),
                  ],
                ),
              ),
              ButtonAtencionPre(
                text: 'Registrar Atención',
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_) => RegistrarAtencion(),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
