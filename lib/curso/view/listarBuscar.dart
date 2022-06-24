// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ListarCurso extends StatelessWidget {
  const ListarCurso({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buscar curso"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 18, 73, 41),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/buscarCurso');
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
              height: 80,
            ),
            SizedBox(
              child: Center(
                child: Text('TEM QUE COLOCAR UM BOX PARA DEMONSTRAR DADOS DE ALUNO ENCONTRADO. não sei como fazer ainda :/'),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(top: 40, left: 90, right: 90),
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
                  'REPETIR BUSCA',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  //navega para a rota '/dashboard' quando o botão é clicado
                  Navigator.of(context).pushReplacementNamed('/buscarCurso');
                },
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Container(
              margin: EdgeInsets.only(top: 40, left: 90, right: 90),
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
                  'ATUALIZAR DADOS',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  //navega para a rota '/dashboard' quando o botão é clicado
                  Navigator.of(context).pushReplacementNamed('/atualizarCurso');
                },
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Container(
              margin: EdgeInsets.only(top: 40, left: 90, right: 90),
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
                  'DELETAR DADOS',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  //navega para a rota '/dashboard' quando o botão é clicado
                  Navigator.of(context).pushReplacementNamed('/deletarCurso');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
