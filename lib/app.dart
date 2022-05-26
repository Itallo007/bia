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
      '/dashboard': (context) => Dashboard()
    }
  );
}