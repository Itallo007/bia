import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  void onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      Container(
        color: Color.fromARGB(150, 210, 233, 183),
        padding: EdgeInsets.only(
          top: 5,
          left: 35,
          right: 35,
        ),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(1),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'PROFESSOR',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/menuProfessor');
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'SUPERVISOR',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/menuSupervisor');
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'CURSOS',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/menuCurso');
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'CONCEDENTES',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/menuConcedente');
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(255, 18, 73, 41),
                    Color.fromARGB(148, 154, 194, 150),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'PRIORIDADE',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/prioridade');
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(255, 18, 73, 41),
                    Color.fromARGB(148, 154, 194, 150),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'SUGESTÃO',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/sugestoes');
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(255, 18, 73, 41),
                    Color.fromARGB(148, 154, 194, 150),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'IMPORTAR ARQUIVO ALUNOS GERAIS',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/importarAlunosGerais');
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(255, 18, 73, 41),
                    Color.fromARGB(148, 154, 194, 150),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'IMPORTAR ARQUIVO MATÉRIA ESTÁGIO',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/importarAlunosEstagio');
                },
              ),
            ),
          ],
        ),
      ),
      Container(
        color: Color.fromARGB(150, 210, 233, 183),
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 86,
              child: Image.asset("imagens/bia_logo.png"),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'Cadastrar nova vaga',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/cadastrarVaga');
                },
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'Procurar uma vaga',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/buscarVaga');
                },
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'Atualizar dados de uma vaga',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/atualizarBuscarVaga');
                },
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'Deletar dados de uma vaga',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/buscarDeletarVaga');
                },
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'Listar todas as vagas disponíveis',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/vagasDisponiveis');
                },
              ),
            ),
          ],
        ),
      ),
      Container(
        color: Color.fromARGB(150, 210, 233, 183),
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 86,
              child: Image.asset("imagens/bia_logo.png"),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'Cadastrar novo aluno',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/cadastrarAluno');
                },
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'Procurar cadastro de um aluno',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/buscarAluno');
                },
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'Atualizar dados de um aluno',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/atualizarBuscarAluno');
                },
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'Deletar cadastro de um aluno',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/buscarDeletarAluno');
                },
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'Listar alunos matriculados em estágio',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/matriculadosEstagio');
                },
              ),
            ),
          ],
        ),
      ),
      Container(
        color: Color.fromARGB(150, 210, 233, 183),
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 86,
              child: Image.asset("imagens/bia_logo.png"),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'ACESSAR PERFIL',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/perfil');
                },
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'SAIR',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
            ),
          ],
        ),
      ),
      /* actions: [
            IconButton(
                icon: const Icon(Icons.exit_to_app),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/');
                })
          ],*/
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("BIA - Basic Internship Administrator"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 18, 73, 41),
        ),
        body: Center(child: screens.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início', backgroundColor: Color.fromARGB(255, 18, 73, 41)),
            BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Vagas', backgroundColor: Color.fromARGB(255, 18, 73, 41)),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Alunos', backgroundColor: Color.fromARGB(255, 18, 73, 41)),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Mais', backgroundColor: Color.fromARGB(255, 18, 73, 41)),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white60,
          showUnselectedLabels: true,
          onTap: onTapItem,
        ));
  }
}
