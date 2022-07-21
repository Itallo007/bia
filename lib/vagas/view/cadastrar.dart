import 'package:flutter/material.dart';
import 'package:bia/vagas/view/cadastrar_vaga_form.dart';

class CadastrarVagas extends StatefulWidget {
  const CadastrarVagas({Key? key}) : super(key: key);

  @override
  State<CadastrarVagas> createState() => _CadastrarVagasState();
}

class _CadastrarVagasState extends State<CadastrarVagas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/dashboard');
          },
        ),
        title: Text("Cadastrar uma vaga"),
        backgroundColor: Color.fromARGB(255, 18, 73, 41),
      ),
      body: const CadastrarVagaForm(null),
    );
  }
}
