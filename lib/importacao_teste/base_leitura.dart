import 'dart:io';
import 'dart:convert';

void main() {
  var arquivo = File('teste.csv').readAsString().then((data) => print('Arquivo lido $data'));
  print('Finalizou :p');
  // Abriu uma nova thread, deixou a execução sendo feita e recebemos uma resposta quando for terminada*/
  //apenas leitura de arquivo csv de forma simples

}

