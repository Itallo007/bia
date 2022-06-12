import 'dart:io';
import 'dart:convert';
import 'package:csv/csv.dart';

Future<void> main() async {
  var arquivo = File('planilha_modificada.csv').openRead();
  var csv = await arquivo.transform(utf8.decoder).transform(CsvToListConverter(fieldDelimiter: ',')).toList();
  //abre o arquivo, decodifica os bytes, bota em utf-8 e transforma o delimitador para virgula e depois converte em uma string gigantesca
  //obs. o arquivo "planilha_modificada.csv" é a base com varios dados falsos so para realizar testes

  var arquivo_materia_estagio = File('materia_estagio.csv').openRead();
  var csv_materia_estagio = await arquivo_materia_estagio.transform(utf8.decoder).transform(CsvToListConverter(fieldDelimiter: ',')).toList();

  var nome;
  var matricula;
  var curso;
  var situacao;
  var email;
  var ano_ingresso;

  var ano = 2022.1;

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

  bool checar_prioridade_dentro_da_prioridade(double semestre, double ano_aluno) {
    int pega_inteiro_ano = 0;
    pega_inteiro_ano = semestre.round();

    double converte_inteiro_ano = pega_inteiro_ano.toDouble();
    double valor_decimal = 0;
    valor_decimal = semestre - converte_inteiro_ano;

    if (valor_decimal >= 0.2) {
      valor_decimal = 0.2;
    } else if (valor_decimal <= 0.1) {
      valor_decimal = 0.1;
    }
    String valor_decimal_limitado;

    double prioridade = semestre - 1;
    if (valor_decimal == 0.2) {
      semestre = prioridade - 0.1;
      valor_decimal_limitado = semestre.toStringAsFixed(1);
      double ano_prioridade = double.parse(valor_decimal_limitado);

      if (ano_aluno == ano_prioridade) {
        return true;
      } else {
        return false;
      }
    } else if (valor_decimal == 0.1) {
      prioridade = prioridade - 1;
      semestre = prioridade + 0.11;
      valor_decimal_limitado = semestre.toStringAsFixed(1);
      double ano_prioridade = double.parse(valor_decimal_limitado);

      if (ano_aluno == ano_prioridade) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  void confere_aluno_matriculado(var matricula_materia_estagio, String nome_materia_estagio, String email_estagio, double ano_entrada) {
    int cont = 0;
    csv_materia_estagio.forEach((linha_materia_estagio) {
      if (linha_materia_estagio[1] == matricula_materia_estagio && linha_materia_estagio[2] == nome_materia_estagio) {
        print('Esse aluno é uma prioridade!');
        if (checar_prioridade_dentro_da_prioridade(ano, ano_entrada) == false) {
          print('A prioridade deste aluno é alta. \n');
        } else {
          print('A prioridade deste aluno é mediana. \n');
        }
        cont++;
      }
    });
    if (cont == 0) {
      if (email_estagio.isNotEmpty) {
        print('Esse aluno é uma prioridade, porém não está matriculado na matéria estágio e não sabemos se ele já estagiou. Por favor, entre em contato em: $email_estagio \n');
      } else {
        print('Esse aluno é uma prioridade, porém não está matriculado na matéria estágio e não sabemos se ele já estagiou. Por favor, consulte o SUAP para mais informações dele.\n');
      }
    }
  }

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

//      print('prioridade do semestre terminado em .1 $valor_decimal_limitado');

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
        confere_aluno_matriculado(matricula, nome, email, ano_ingresso);
      } else {
        print('Este aluno não é prioridade agora.\n');
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
        confere_aluno_matriculado(matricula, nome, email, ano_ingresso);
      } else {
        print('Este aluno não é prioridade agora.\n');
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
