import 'dart:io';
import 'dart:convert';
import 'package:csv/csv.dart';

Future <void> main() async{
var arquivo = File('teste.csv').openRead();

var csv = await arquivo
  .transform(utf8.decoder)
  .transform(CsvToListConverter(fieldDelimiter: ','))
  .toList();

  csv.forEach((linha){
    var id = linha[0];
    var matricula = linha[1];
    var nome = linha[2];
    var situacao = linha[5];

    print('ID: $id | Nome: $nome | Matrícula: $matricula | Situação: $situacao');
  });
}


