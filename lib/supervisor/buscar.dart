// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BuscarSupervisor extends StatelessWidget {
  const BuscarSupervisor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buscar dados de um supervisor"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 18, 73, 41),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/menuSupervisor');
            },
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(150, 210, 233, 183),
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            SizedBox(
              width: 200,
              height: 86,
              child: Image.asset("imagens/bia_logo.png"),
            ),
            SizedBox(
              height: 60,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                fillColor: Color.fromARGB(148, 154, 194, 150),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color.fromARGB(148, 154, 194, 150), width: 2.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                labelText: "Nome completo",
                labelStyle: TextStyle(
                  color: Color.fromARGB(117, 117, 116, 116),
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                fillColor: Color.fromARGB(148, 154, 194, 150),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color.fromARGB(148, 154, 194, 150), width: 2.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                labelText: "Unidade concedente - OPÇÃO DE ROLAR",
                labelStyle: TextStyle(
                  color: Color.fromARGB(117, 117, 116, 116),
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 90, right: 90),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.2, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'PROCURAR',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  //navega para a rota '/dashboard' quando o botão é clicado
                  Navigator.of(context).pushReplacementNamed('/listarSupervisor');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
