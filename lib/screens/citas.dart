
import 'package:flutter/material.dart';
import 'package:evaluacion_2/navigators/drawer.dart';

class Citas extends StatelessWidget {
  const Citas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text("Servicios"),
          ],
        ),
      ),
      drawer: MiDrawer(),
      body: Center(
        child: Text("¡Bienvenido a la sección de Servicios!Crea tu cita médica aquí.",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
