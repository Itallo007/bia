// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BuscarVaga extends StatefulWidget {
  const BuscarVaga({Key? key}) : super(key: key);

  @override
  State<BuscarVaga> createState() => _BuscarVagaState();
}

class _BuscarVagaState extends State<BuscarVaga> {
  final organizationList = <String>[
    'MegaNews',
    'Prefeitura',
    'Soft Com',
    'Grupo exito'
  ];
  String dropDownOrganizationValue = '';

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buscar dados de uma vaga"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 18, 73, 41),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/dashboard');
          },
        ),
      ),
      body: Container(
        color: Color.fromARGB(150, 210, 233, 183),
        padding: EdgeInsets.only(
          top: 0,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8),
                suffixIcon: const Icon(Icons.search),
                suffixIconColor: Color.fromARGB(20, 30, 30, 30),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 18, 73, 41), width: 2.0),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                label: Text("Título"),
                hintText: "Informe o título",
                hintStyle: TextStyle(
                  color: Color.fromARGB(30, 20, 20, 20),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DropdownButtonFormField<String>(
                hint: Text('Selecione a empresa'),
                value: (dropDownOrganizationValue.isEmpty
                    ? null
                    : dropDownOrganizationValue),
                onChanged: (newValue) => {
                      setState(() => {dropDownOrganizationValue = newValue!})
                    },
                items: organizationList
                    .map((String e) =>
                        DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                decoration: InputDecoration(labelText: "Concedente")),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Text('Remunerado',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )),
                Checkbox(
                    value: isChecked,
                    onChanged: (bool? newValue) => {
                          setState(() => {isChecked = newValue!})
                        }),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 90, right: 90),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.2, 1],
                  colors: const [
                    Color.fromARGB(148, 154, 194, 150),
                    Color.fromARGB(255, 18, 73, 41),
                  ],
                ),
              ),
              child: TextButton(
                child: Center(
                    child: Text(
                  'PROCURAR',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  //navega para a rota '/dashboard' quando o botão é clicado
                  Navigator.of(context).pushReplacementNamed('/listarVaga');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
