import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Tienda {
  final int id;
  final String nombre;
  final String direccion;
  final String telefono;
  final String correo;
  final String horario;

  Tienda({
    required this.id,
    required this.nombre,
    required this.direccion,
    required this.telefono,
    required this.correo,
    required this.horario,
  });
}

class MyApp extends StatelessWidget {
  final List<Tienda> tiendas = [
    Tienda(
        id: 1,
        nombre: "Tienda 1",
        direccion: "Calle 123",
        telefono: "1234567890",
        correo: "tienda1@mail.com",
        horario: "9AM - 6PM"),
    Tienda(
        id: 2,
        nombre: "Tienda 2",
        direccion: "Calle 456",
        telefono: "0987654321",
        correo: "tienda2@mail.com",
        horario: "10AM - 7PM"),
    Tienda(
        id: 3,
        nombre: "Tienda 3",
        direccion: "Calle 789",
        telefono: "1112223333",
        correo: "tienda3@mail.com",
        horario: "8AM - 5PM"),
    Tienda(
        id: 4,
        nombre: "Tienda 4",
        direccion: "Calle 321",
        telefono: "4445556666",
        correo: "tienda4@mail.com",
        horario: "11AM - 8PM"),
    Tienda(
        id: 5,
        nombre: "Tienda 5",
        direccion: "Calle 654",
        telefono: "7778889999",
        correo: "tienda5@mail.com",
        horario: "7AM - 4PM"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Eliziel Camperos Garcia", style: TextStyle(fontSize: 18)),
              Text("22308051281159", style: TextStyle(fontSize: 14)),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children:
                  tiendas.map((tienda) => buildTiendaCard(tienda)).toList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTiendaCard(Tienda tienda) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(2, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${tienda.nombre}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text("Dirección: ${tienda.direccion}"),
          Text("Teléfono: ${tienda.telefono}"),
          Text("Correo: ${tienda.correo}"),
          Text("Horario: ${tienda.horario}"),
        ],
      ),
    );
  }
}
