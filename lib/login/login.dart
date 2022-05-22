
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(// cria uma tela simples
      child: Column (// coloca uma coluna dentro da tela
        mainAxisAlignment: MainAxisAlignment.center,
        children: [// lista de elementos da coluna
          Text('Welcome to BIA'),
          ElevatedButton(// cria um botão
            onPressed: () {
              //navega para a rota '/dashboard' quando o botão é clicado
              Navigator.of(context).pushReplacementNamed('/dashboard');
            },
            child: Text('Entrar')
          )
        ],
      )
    );
  }
}
