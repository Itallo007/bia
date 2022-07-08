import 'package:flutter/material.dart';

class CadastrarVagas extends StatefulWidget {
  const CadastrarVagas({Key? key}) : super(key: key);
  
  @override
  State<CadastrarVagas> createState() => new _CadastrarVagasState();
}

class _CadastrarVagasState extends State<CadastrarVagas> {

  final organizationList = <String>['MegaNews', 'Prefeitura', 'Soft Com', 'Grupo exito'];
  String dropDownOrganizationValue = '';

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/dashboard');
          },
        ),
        title: Text("Cadastrar uma vaga"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 18, 73, 41),
      ),
      body: Container(
        color: Color.fromARGB(150, 210, 233, 183),
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 32,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Título",
                labelStyle: TextStyle(
                  color: Color.fromARGB(117, 117, 116, 116),
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 150),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Descrição",
                  hintText: "Digite a descrição da vaga",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(117, 117, 116, 116),
                  ),
                  contentPadding: EdgeInsets.all(8),
                  fillColor: Color.fromARGB(251, 255, 255, 255),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(148, 154, 194, 150), width: 5.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                maxLines: null,
              ),
            ),
            DropdownButtonFormField<String> (
              hint: Text('Selecione a empresa'),
              value: (dropDownOrganizationValue.isEmpty ? null: dropDownOrganizationValue),
              onChanged: (newValue) => {
                setState(() => {
                  dropDownOrganizationValue = newValue!
                })
              },
              items: organizationList.map((String e) => DropdownMenuItem(
                value: e,
                child: Text(e)
              )).toList(),
              decoration: InputDecoration(
                labelText: "Concedente",
                labelStyle: TextStyle(
                  color: Color.fromARGB(117, 117, 116, 116),
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              )
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? newValue) => {
                    setState(() => {
                      isChecked = newValue!
                    })
                }),
                Text('Remunerado')
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 90, right: 90),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
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
                  'CADASTRAR',
                  style: TextStyle(color: Color.fromARGB(218, 235, 229, 229)),
                )),
                onPressed: () {
                  //navega para a rota '/dashboard' quando o botão é clicado
                  Navigator.of(context).pushReplacementNamed('/dashboard');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
