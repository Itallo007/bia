import 'dart:io';
import 'dart:convert';
import 'package:csv/csv.dart';

Future<void> main() async {
  var arquivo = File('planilha_modificada.csv').openRead();
  var csv = await arquivo.transform(utf8.decoder).transform(CsvToListConverter(fieldDelimiter: ',')).toList();
  //abre o arquivo, decodifica os bytes, bota em utf-8 e transforma o delimitador para virgula e depois converte em uma string gigantesca
  //obs. o arquivo "planilha_modificada.csv" é a base com varios dados falsos so para realizar testes

//lista todos os alunos de forma completa
  /* print('Todos os alunos: ')
  csv.forEach((linha) {
    var nome1 = linha[1];
    var matricula1 = linha[2];
    var curso1 = linha[3];
    var situacao1 = linha[6];
    var email1 = linha[8];
    var ano_ingresso1 = linha[9];

    print('Nome: $nome1 | Matrícula: $matricula1 | Curso: $curso1 | Situação: $situacao1 | E-mail: $email1 | Ano de Ingresso: $ano_ingresso1');

  }); */

  var nome;
  var matricula;
  var curso;
  var situacao;
  var email;
  var ano_ingresso;

  var ano = 2022.1;

  bool calculo_prioridade_superior(double semestre, double ano_aluno) {
    //semestre recebe o ano, ex.: 2022.2; ano_aluno é o ano de ingresso do ifba
    int pega_inteiro_ano = 0;
    pega_inteiro_ano = semestre.round();
    //print('Teste funcionou $pega_inteiro_ano');
    //pega só a parte inteira do numero double

    double converte_inteiro_ano = pega_inteiro_ano.toDouble();
    //print('decimal funcionou $converte_inteiro_ano');
    //converte só a parte inteira para double

    double valor_decimal = 0;
    valor_decimal = semestre - converte_inteiro_ano;
    //subtrai o ano de referencia e o decimal para saber exatamente em qual semestre está
    //print('resultado para descobrir o valor do decimal $valor_decimal');

    if (valor_decimal >= 0.2) {
      valor_decimal = 0.2;
    } else if (valor_decimal <= 0.1) {
      valor_decimal = 0.1;
    }
    String valor_decimal_limitado;

    double prioridade = semestre - 1;

    //print('ano de prioridade base para calculo $prioridade');

    if (valor_decimal == 0.2) {
      semestre = prioridade - 0.1;
      valor_decimal_limitado = semestre.toStringAsFixed(1);
      // print('prioridade do semestre terminado em .2 $valor_decimal_limitado');

      if (ano_aluno <= semestre) {
        return true;
      } else {
        return false;
      }
    } else if (valor_decimal == 0.1) {
      prioridade = prioridade - 1;
      semestre = prioridade + 0.11;
      valor_decimal_limitado = semestre.toStringAsFixed(1);

      //print('prioridade do semestre terminado em .1 $valor_decimal_limitado');

      if (ano_aluno <= semestre) {
        return true;
      } else {
        return false;
      }
    } else {
      //print('alguma coisa deu errada :p');
      return false;
    }
  }

//precisa terminar :p
  /*bool calculo_prioridade_integrado(double semestre, double ano_aluno) {
    semestre = ano;
    double resultado = semestre - 2;
    return false;
  }*/

  //código base para salvar dados de alunos no banco de dados

  csv.forEach((linha) {
    //pega todos os alunos matriculados de ads
    situacao = linha[6];
    curso = linha[3];
    if (situacao == 'Matriculado' && curso == 'IREADS - ANÁLISE E DESENVOLVIMENTO DE SISTEMAS (Irecê)') {
      //salva independente de precisar ou não do estágio
      nome = linha[1];
      matricula = linha[2];
      curso = linha[3];
      situacao = linha[6];
      email = linha[8];
      ano_ingresso = linha[9];
      print('Nome: $nome | Matrícula: $matricula | Curso: $curso | Situação: $situacao | E-mail: $email | Ano de Ingresso: $ano_ingresso');
      calculo_prioridade_superior(ano, ano_ingresso);
      if (calculo_prioridade_superior(ano, ano_ingresso) == true) {
        print(' precisa de estagio');
      } else {
        print('NAO PRECISA DE ESTAGIO');
      }
      //linha precisa ser adicionada para salvar dados específicos em ads
      //precisa do if para verificar se o aluno ja ta na base de dados ou nao
    }
    if (situacao == 'Matriculado' && curso == 'IREMIND - MANUTENÇÃO INDUSTRIAL (Irecê)') {
      //salva independente de precisar ou não do estágio
      nome = linha[1];
      matricula = linha[2];
      curso = linha[3];
      situacao = linha[6];
      email = linha[8];
      ano_ingresso = linha[9];

      print('Nome: $nome | Matrícula: $matricula | Curso: $curso | Situação: $situacao | E-mail: $email | Ano de Ingresso: $ano_ingresso');
      calculo_prioridade_superior(ano, ano_ingresso);
      if (calculo_prioridade_superior(ano, ano_ingresso) == true) {
        print(' precisa de estagio');
      } else {
        print('NAO PRECISA DE ESTAGIO');
      }
    }
    //linha precisa ser adicionada para salvar dados específicos em manutenção industrial
    //precisa do if para verificar se o aluno ja ta na base de dados ou nao

    if (situacao == 'Matriculado' && curso == 'IREINFINT - TÉCNICO DE NÍVEL MÉDIO EM INFORMÁTICA - FORMA INTEGRADA (Irecê)') {
      //salva independente de precisar ou não do estágio
      nome = linha[1];
      matricula = linha[2];
      curso = linha[3];
      situacao = linha[6];
      email = linha[8];
      ano_ingresso = linha[9];

      //linha precisa ser adicionada para salvar dados específicos em tec. informatica
      //precisa do if para verificar se o aluno ja ta na base de dados ou nao
    }
    if (situacao == 'Matriculado' && curso == 'IREBIOINT - TÉCNICO DE NÍVEL MÉDIO EM BIOCOMBUSTÍVEIS - FORMA INTEGRADA (Irecê)') {
      //salva independente de precisar ou não do estágio
      nome = linha[1];
      matricula = linha[2];
      curso = linha[3];
      situacao = linha[6];
      email = linha[8];
      ano_ingresso = linha[9];

      //linha precisa ser adicionada para salvar dados específicos em tec. biocombustiveis
      //precisa do if para verificar se o aluno ja ta na base de dados ou nao
    }
    if (situacao == 'Matriculado' && curso == 'IREELEINT - TÉCNICO DE NÍVEL MÉDIO EM ELETROMECÂNICA - FORMA INTEGRADA (Irecê)') {
      //salva independente de precisar ou não do estágio

      nome = linha[1];
      matricula = linha[2];
      curso = linha[3];
      situacao = linha[6];
      email = linha[8];
      ano_ingresso = linha[9];
      //linha precisa ser adicionada para salvar dados específicos em tec. eletromecanica
      //precisa do if para verificar se o aluno ja ta na base de dados ou nao
    }
  });
}
