import 'package:flutter/material.dart';

import 'home/dashboard.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: "Bia",
    theme: ThemeData(

      primarySwatch: Colors.green,
    ),
    home: Dashboard(message: "Welcome to Bia")
  );
}