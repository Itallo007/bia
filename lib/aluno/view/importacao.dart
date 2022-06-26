import 'package:flutter/material.dart';

class ImportarAluno extends StatelessWidget {
  const ImportarAluno({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Importar todos os alunos"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 18, 73, 41),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/dashboard');
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
              height: 100,
            ),
            SizedBox(
              height: 100,
              child: Text('ALTERARRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR'),
            ),
          ],
        ),
      ),
    );
  }
}
