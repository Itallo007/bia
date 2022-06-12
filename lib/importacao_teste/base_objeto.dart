import 'dart:io';
import 'dart:convert';
import 'package:csv/csv.dart';

Future<void> main() async {
  var arquivo = File('Relatorio.csv').openRead();
  var csv = await arquivo.transform(utf8.decoder).transform(CsvToListConverter(fieldDelimiter: ',')).toList();

  /*var arquivo1 = File('materia_estagio.csv').openRead();
  var csv1 = await arquivo1.transform(utf8.decoder).transform(CsvToListConverter(fieldDelimiter: ',')).toList();*/

//lista todos os alunos de forma completa
  /* int bla = 0;
  csv.forEach((linha) {
    var nome1 = linha[1];
    var matricula1 = linha[2];
    var curso1 = linha[3];
    var situacao1 = linha[6];
    var email1 = linha[8];
    var ano_ingresso1 = linha[9];

    print('Nome: $nome1 | Matrícula: $matricula1 | Curso: $curso1 | Situação: $situacao1 | E-mail: $email1 | Ano de Ingresso: $ano_ingresso1');
    bla++;
  }); print(bla);*/

  var contador = 0;
  var contador2 = 0;
  var nome;
  var matricula;
  var curso;
  var situacao;
  var email;
  var ano_ingresso;
  var nome_materia;
  var matricula_materia;
  var situacao_materia;
  var ano = 2022.2;

  /*Function(double semestre, double ano_aluno) {
    //semestre recebe o ano, ex.: 2022.2; ano_aluno é o ano de ingresso do ifba
    int teste = 0;
    teste = semestre.round();
    print(teste);
    //pega só a parte inteira do numero double

    double resultado = 0;

    double decimal = teste.toDouble();
    print(decimal);
    //converte só a parte inteira para double

    resultado = semestre - decimal;
    //subtrai o ano de referencia e o decimal para saber exatamente em qual semestre está 
    print(resultado);

    double prioridade = ano_aluno - 3;

    if (decimal >= 0.2) {

    }
  }*/

  //código base para salvar dados de alunos no banco de dados

  csv.forEach((linha) {
    /*pega todos os alunos matriculados de ads*/
    situacao = linha[6];
    curso = linha[3];
    if (situacao == 'Matriculado' && curso == 'IREADS - ANÁLISE E DESENVOLVIMENTO DE SISTEMAS (Irecê)') {
      //salva independente de precisar ou não do estágio
      if (ano_ingresso >= ano - 3) {
        //salva como priorizado
        nome = linha[1];
        matricula = linha[2];
        curso = linha[3];
        situacao = linha[6];
        email = linha[8];
        ano_ingresso = linha[9];
      }
      //linha precisa ser adicionada para salvar dados específicos em ads
    }
    if (situacao == 'Matriculado' && curso == 'IREMIND - MANUTENÇÃO INDUSTRIAL (Irecê)') {
      //salva independente de precisar ou não do estágio
      if (ano_ingresso >= ano - 3) {
        //salva como priorizado
        nome = linha[1];
        matricula = linha[2];
        curso = linha[3];
        situacao = linha[6];
        email = linha[8];
        ano_ingresso = linha[9];
      }
      //linha precisa ser adicionada para salvar dados específicos em manutenção industrial
    }
    if (situacao == 'Matriculado' && curso == 'IREINFINT - TÉCNICO DE NÍVEL MÉDIO EM INFORMÁTICA - FORMA INTEGRADA (Irecê)') {
      //salva independente de precisar ou não do estágio
      if (ano_ingresso >= ano - 3) {
        //salva como priorizado
        nome = linha[1];
        matricula = linha[2];
        curso = linha[3];
        situacao = linha[6];
        email = linha[8];
        ano_ingresso = linha[9];
      }
      //linha precisa ser adicionada para salvar dados específicos em tec. informatica
    }
    if (situacao == 'Matriculado' && curso == 'IREBIOINT - TÉCNICO DE NÍVEL MÉDIO EM BIOCOMBUSTÍVEIS - FORMA INTEGRADA (Irecê)') {
      //salva independente de precisar ou não do estágio
      if (ano_ingresso >= ano - 3) {
        //salva como priorizado
        nome = linha[1];
        matricula = linha[2];
        curso = linha[3];
        situacao = linha[6];
        email = linha[8];
        ano_ingresso = linha[9];
      }
      //linha precisa ser adicionada para salvar dados específicos em tec. biocombustiveis
    }
    if (situacao == 'Matriculado' && curso == 'IREELEINT - TÉCNICO DE NÍVEL MÉDIO EM ELETROMECÂNICA - FORMA INTEGRADA (Irecê)') {
      //salva independente de precisar ou não do estágio
      if (ano_ingresso >= ano - 3) {
        //salva como priorizado
        nome = linha[1];
        matricula = linha[2];
        curso = linha[3];
        situacao = linha[6];
        email = linha[8];
        ano_ingresso = linha[9];
      }
      //linha precisa ser adicionada para salvar dados específicos em tec. eletromecanica
    }
  });
  print(contador);
}
