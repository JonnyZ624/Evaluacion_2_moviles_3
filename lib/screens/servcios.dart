import 'dart:convert';
import 'package:evaluacion_2/navigators/drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Servicios extends StatelessWidget {
  const Servicios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Citas"),
      ),
      drawer: MiDrawer(),
      body: Center(
        child: Column(
          children: [
            Text("Lista"),
            Expanded(child: lista("https://jritsqmet.github.io/web-api/medico.json")), 
          ],
        ),
      ),
    );
  }
}

Future<List> leerJsonExterno(url) async {
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return json.decode(response.body)['servicio_medico']; 
  } else {
    throw Exception("Error");
  }
}

Widget lista(url) {
  return FutureBuilder(future: leerJsonExterno(url),builder: (context, snapshot) {
      if (snapshot.hasData) {
        final data = snapshot.data!; // Aquí accedes a la lista de servicios médicos
        return ListView.builder(itemCount: data.length,itemBuilder: (context, index) {
            final item = data[index];
            return ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${item['nombre']}"),  
                  Image.network(item['info']['imagen'], height: 200,) ,
                  Text("Horario: ${item['horario']}", style: TextStyle(fontSize: 16, color: Colors.grey)),  
                ],
              ),
              onTap: () => infromacionextra(context, item),
            );
          },
        );
      } else {
        return Text("Data no encontrada");
      }
    },
  );
}


void infromacionextra(BuildContext context, item) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(item['nombre']), 
        content: SingleChildScrollView(
          child: Column(
            children: [
              Text("Descripción: ${item['descripcion']}"), 
              Text("Precio: ${item['info']['precio']}"), 
              Text("Duración: ${item['info']['duracion']}"),
              Text("Contacto:"),
              Text("Teléfono: ${item['contacto']['telefono']}"), 
              Text("Email: ${item['contacto']['email']}"),
            ],
          ),
        ),
        
      );
    },
  );
}