import 'package:bia/modalidade_curso/model/modalidade_curso.dart';
import 'package:bia/professor/model/professor.dart';

class Curso {
  final String _nome;
  final String _turno;
  final ModalidadeCurso _modalidadeCurso;
  final Professor _coordenador;

  Curso(this._nome, this._turno, this._modalidadeCurso, this._coordenador);

  String get nome => _nome;

  String get turno => _turno;

  ModalidadeCurso get modalidadeCurso => _modalidadeCurso;

  Professor get coordenador => _coordenador;
}
