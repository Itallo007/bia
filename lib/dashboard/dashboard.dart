import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/');
              })
        ],
      ),
      body: Center(child: Text(widget.message)),
      bottomNavigationBar: BottomAppBar(
          color: Colors.green,
          child: IconTheme(
            data: IconThemeData(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      tooltip: 'Inicio',
                      icon: Icon(Icons.home),
                      onPressed: () {},
                    ),
                    Text('Inicio', style: TextStyle(color: Colors.white),)
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      tooltip: 'Vagas',
                      icon: Icon(Icons.work),
                      onPressed: () {},
                    ),
                    Text('Vagas', style: TextStyle(color: Colors.white),)
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      tooltip: 'Alunos',
                      icon: Icon(Icons.group),
                      onPressed: () {},
                    ),
                    Text('Alunos', style: TextStyle(color: Colors.white),)
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      tooltip: 'Mais',
                      icon: Icon(Icons.menu),
                      onPressed: () {},
                    ),
                    Text('Mais', style: TextStyle(color: Colors.white),)
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
