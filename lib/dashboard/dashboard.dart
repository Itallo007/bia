import 'package:flutter/material.dart';
import 'package:bia/aluno/view/cadastro.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  List<Widget> screens = [
    Text('Início'),
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
                stops: [0.2, 1],
                colors: [
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
                //navega para a rota '/dashboard' quando o botão é clicado
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
                stops: [0.2, 1],
                colors: [
                  Color.fromARGB(148, 154, 194, 150),
                  Color.fromARGB(255, 18, 73, 41),
                ],
              ),
            ),
            child: TextButton(
              child: Center(
                  child: Text(
                'Listar todas as vagas',
                style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
              )),
              onPressed: () {
                //navega para a rota '/dashboard' quando o botão é clicado
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
                stops: [0.2, 1],
                colors: [
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
                //navega para a rota '/dashboard' quando o botão é clicado
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
                stops: [0.2, 1],
                colors: [
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
                //navega para a rota '/dashboard' quando o botão é clicado
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
                stops: [0.2, 1],
                colors: [
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
                //navega para a rota '/dashboard' quando o botão é clicado
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
                stops: [0.2, 1],
                colors: [
                  Color.fromARGB(148, 154, 194, 150),
                  Color.fromARGB(255, 18, 73, 41),
                ],
              ),
            ),
            child: TextButton(
              child: Center(
                  child: Text(
                'Listar todos os alunos',
                style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
              )),
              onPressed: () {
                //navega para a rota '/dashboard' quando o botão é clicado
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
                stops: [0.2, 1],
                colors: [
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
                //navega para a rota '/dashboard' quando o botão é clicado
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
                stops: [0.2, 1],
                colors: [
                  Color.fromARGB(148, 154, 194, 150),
                  Color.fromARGB(255, 18, 73, 41),
                ],
              ),
            ),
            child: TextButton(
              child: Center(
                  child: Text(
                'Deletar dados de um aluno',
                style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
              )),
              onPressed: () {
                //navega para a rota '/dashboard' quando o botão é clicado
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
                stops: [0.2, 1],
                colors: [
                  Color.fromARGB(148, 154, 194, 150),
                  Color.fromARGB(255, 18, 73, 41),
                ],
              ),
            ),
            child: TextButton(
              child: Center(
                  child: Text(
                'Importar todos os alunos',
                style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
              )),
              onPressed: () {
                //navega para a rota '/dashboard' quando o botão é clicado
              },
            ),
          ),
        ],
      ),
    ),
    Text('Mais'),
  ];

  void onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BIA - Basic Internship Administrator"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 18, 73, 41),
          actions: [
            IconButton(
                icon: const Icon(Icons.exit_to_app),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/');
                })
          ],
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
