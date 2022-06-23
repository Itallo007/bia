import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  List<Widget> screens = [
    Text('Início'),
    Text('Vagas'),
    Text('Alunos'),
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
          title: Text("BIA - Basic Intership Administrator"),
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
