import 'package:meta/meta.dart';

class Paciente {
  const Paciente({
    required this.ci,
    required this.name,
    required this.telefono,
    required this.direccion,
    required this.casa,
  });
  final String ci;
  final String name;
  final String telefono;
  final String direccion;
  final String casa;
}
