import 'package:flutter/material.dart';

class CadastrarVagas extends StatelessWidget {
  const CadastrarVagas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar uma vaga"),
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
              height: 40,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Título",
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
              height: 30,
            ),
            SizedBox(
              child: Text("Descrição - CONSERTARRRRRRRRRRRRRRRRR"),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                fillColor: Color.fromARGB(251, 255, 255, 255),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color.fromARGB(148, 154, 194, 150), width: 5.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
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
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Remunerado - CHECKBOX",
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
            TextFormField(
              //precisa alterar curso para checkbox
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Status - OPÇÃO DE ROLAR",
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
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 90, right: 90),
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
                  'CADASTRAR',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  //navega para a rota '/dashboard' quando o botão é clicado
                  Navigator.of(context).pushReplacementNamed('/dashboard');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
