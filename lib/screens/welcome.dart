
import 'package:evaluacion_2/navigators/drawer.dart';
import 'package:evaluacion_2/screens/login.dart';
import 'package:evaluacion_2/screens/registro.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      drawer: MiDrawer(),
       body: Center(
        child: Column(
          children: [
            Text("Jonathan Tapia"),
            Text("JonnyZ624"),
            boton1(context),
            boton2(context)
          ],
        ),
      ),
    );
  }
}

Widget boton1(context) {
  return TextButton(onPressed: () {Navigator.push( context,MaterialPageRoute(builder: (context) => Login()),);},child: Text("Ir a Login"),
  );
}


Widget boton2( context) {
  return TextButton(onPressed: () {Navigator.push( context,MaterialPageRoute(builder: (context) => Registro()),);},child: Text("Ir a Registro"),
  );
}