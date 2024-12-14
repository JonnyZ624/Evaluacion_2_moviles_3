import 'package:evaluacion_2/screens/citas.dart';
import 'package:evaluacion_2/screens/login.dart';
import 'package:evaluacion_2/screens/registro.dart';
import 'package:evaluacion_2/screens/servcios.dart';
import 'package:evaluacion_2/screens/welcome.dart';
import 'package:flutter/material.dart';


class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Welcome"),
             onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> Welcome())),
          ),
          ListTile(
            title: Text("Login"),
             onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> Login())),
          ),
          ListTile(
            title: Text("Registro"),
             onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> Registro())),
          ),
          ListTile(
            title: Text("Citas"),
             onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> Citas())),
          ),
          ListTile(
            title: Text("Servicios"),
             onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> Servicios())),
          ),
         
         
          
        ],
      ),
    );
  }
}