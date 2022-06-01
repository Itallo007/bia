import 'package:bia/grupo/grupo.dart';

abstract class Usuario {
  String? _nome;
  String? _email;
  String? _telefone;
  String? _password;
  String? _siape;
  Grupo? _grupo;
  bool _ativo = true;

  // Getters and Setters
  String? get nome => _nome;
  void setNome(nome) {
    _nome = nome;
  }

  String? get email => _email;
  void setEmail(email) {
    _email = email;
  }

  String? get telefone => _telefone;
  void setTelefone(telefone) {
    _telefone = telefone;
  }

  String? get password => _password;
  void setPassword(password) {
    _password = password;
  }

  String? get siape => _siape;
  void setSiape(siape) {
    _siape = siape;
  }

  Grupo? get grupo => _grupo;
  void setGrupo(grupo) {
    _grupo = grupo;
  }

  bool get isAtivo => _ativo;
  void setAtivo(ativo) {
    _ativo = ativo;
  }
}