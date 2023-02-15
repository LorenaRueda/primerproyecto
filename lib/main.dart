import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart/';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  HomeStart createState() => HomeStart();
}

class HomeStart extends State<Home> {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bienvendos",
      home: Scaffold(
        appBar: AppBar(
          title: Text("App linea 2"),
        ),
        body: SingleChildScrollView(
          //es para poder deslizar la aplicacion de arriba hacia abajo
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/login.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Email Usuario',
                    hintText: 'Digite email de usuario',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Contraseña',
                    hintText: 'Digite su contraseña',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: ElevatedButton(
                  onPressed: () {
                    print('botón presionado');
                  },
                  child: Text('Enviar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
