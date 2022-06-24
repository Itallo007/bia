import 'package:bia/aluno/view/buscarDeletar.dart';
import 'package:bia/aluno/view/cadastro.dart';
import 'package:bia/aluno/view/deletar.dart';
import 'package:flutter/material.dart';
import 'dashboard/dashboard.dart';
import 'login/login.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
          title: "Bia",
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => Login(),
            '/dashboard': (context) => Dashboard(),
            '/cadastrarAluno': (context) => CadastrarAluno(),
            '/deletarAluno': (context) => DeletarAluno(),
            '/buscarDeletarAluno': (context) => BuscarDeletarAluno(),
          });
}
