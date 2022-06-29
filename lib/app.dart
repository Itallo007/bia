import 'package:bia/aluno/view/atualizar.dart';
import 'package:bia/aluno/view/atualizarBuscar.dart';
import 'package:bia/aluno/view/buscarDeletar.dart';
import 'package:bia/aluno/view/cadastrar.dart';
import 'package:bia/aluno/view/deletar.dart';
import 'package:bia/aluno/view/importacao.dart';
import 'package:bia/aluno/view/listarBusca.dart';
import 'package:bia/curso/view/atualizar.dart';
import 'package:bia/curso/view/atualizarBuscar.dart';
import 'package:bia/curso/view/buscar.dart';
import 'package:bia/curso/view/buscarDeletar.dart';
import 'package:bia/curso/view/cadastrar.dart';
import 'package:bia/curso/view/deletar.dart';
import 'package:bia/curso/view/listarBuscar.dart';
import 'package:bia/professor/view/atualizar.dart';
import 'package:bia/professor/view/atualizarBuscar.dart';
import 'package:bia/professor/view/buscar.dart';
import 'package:bia/professor/view/buscarDeletar.dart';
import 'package:bia/professor/view/cadastrar.dart';
import 'package:bia/professor/view/deletar.dart';
import 'package:bia/professor/view/listarBuscar.dart';
import 'package:bia/professor/view/menuProfessor.dart';
import 'package:bia/supervisor/atualizar.dart';
import 'package:bia/supervisor/atualizarBuscar.dart';
import 'package:bia/supervisor/buscar.dart';
import 'package:bia/supervisor/buscarDeletar.dart';
import 'package:bia/supervisor/cadastrar.dart';
import 'package:bia/supervisor/deletar.dart';
import 'package:bia/supervisor/listarBuscar.dart';
import 'package:bia/supervisor/menuSupervisor.dart';
import 'package:bia/vagas/view/atualizar.dart';
import 'package:bia/vagas/view/atualizarBuscar.dart';
import 'package:bia/vagas/view/buscar.dart';
import 'package:bia/vagas/view/buscarDeletar.dart';
import 'package:bia/vagas/view/cadastrar.dart';
import 'package:bia/vagas/view/deletar.dart';
import 'package:bia/vagas/view/listarBuscar.dart';
import 'package:bia/vagas/view/vagasDisponiveis.dart';
import 'package:flutter/material.dart';
import 'aluno/view/buscar.dart';
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
          '/buscarAluno': (context) => BuscarAluno(),
          '/listarAluno': (context) => ListarAluno(),
          '/atualizarBuscarAluno': (context) => AtualizarBuscarAluno(),
          '/atualizarAluno': (context) => AtualizarAluno(),
          '/cadastrarProfessor': (context) => CadastrarProfessor(),
          '/atualizarBuscarProfessor': (context) => AtualizarBuscarProfessor(),
          '/atualizarProfessor': (context) => AtualizarProfessor(),
          '/buscarProfessor': (context) => BuscarProfessor(),
          '/listarProfessor': (context) => ListarProfessor(),
          '/buscarDeletarProfessor': (context) => BuscarDeletarProfessor(),
          '/deletarProfessor': (context) => DeletarProfessor(),
          '/cadastrarCurso': (context) => CadastrarCurso(),
          '/atualizarBuscarCurso': (context) => AtualizarBuscarCurso(),
          '/atualizarCurso': (context) => AtualizarCurso(),
          '/buscarDeletarCurso': (context) => DeletarBuscarCurso(),
          '/deletarCurso': (context) => DeletarCurso(),
          '/buscarCurso': (context) => BuscarCurso(),
          '/listarCurso': (context) => ListarCurso(),
          '/cadastrarSupervisor': (context) => CadastrarSupervisor(),
          '/atualizarBuscarSupervisor': (context) => AtualizarBuscarSupervisor(),
          '/atualizarSupervisor': (context) => AtualizarSupervisor(),
          '/buscarDeletarSupervisor': (context) => BuscarDeletarSupervisor(),
          '/deletarSupervisor': (context) => DeletarSupervisor(),
          '/buscarSupervisor': (context) => BuscarSupervisor(),
          '/listarSupervisor': (context) => ListarSupervisor(),
          '/cadastrarVaga': (context) => CadastrarVagas(),
          '/buscarVaga': (context) => BuscarVaga(),
          '/listarVaga': (context) => ListarVaga(),
          '/atualizarBuscarVaga': (context) => AtualizarBuscarVaga(),
          '/atualizarVaga': (context) => AtualizarVaga(),
          '/buscarDeletarVaga': (context) => BuscarDeletarVaga(),
          '/deletarVaga': (context) => DeletarVaga(),
          '/vagasDisponiveis': (context) => VagasDisponiveis(),
          '/importarAluno': (context) => ImportarAluno(),
          '/menuProfessor': (context) => MenuProfessor(),
          '/menuSupervisor': (context) => MenuSupervisor(),
        },
      );
}
