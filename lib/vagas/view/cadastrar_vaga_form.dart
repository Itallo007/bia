import 'package:flutter/material.dart';
import 'package:bia/components/custom_text_input.dart';
import 'package:bia/components/custom_description_input.dart';

class CadastrarVagaForm extends StatefulWidget {
  const CadastrarVagaForm(Key? key) : super(key: key);

  @override
  State<CadastrarVagaForm> createState() => _CadastrarVagaFormState();
}

class _CadastrarVagaFormState extends State<CadastrarVagaForm> {
  final organizationList = <String>[
    'MegaNews',
    'Prefeitura',
    'Soft Com',
    'Grupo exito'
  ];
  String dropDownOrganizationValue = '';

  bool isChecked = false;

  final _formKey = GlobalKey<_CadastrarVagaFormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.always,
      child: ListView (
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 32),
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          CustomTextInput(label: 'Título', hint: 'Informe o título',),
          SizedBox(
            height: 32,
          ),
          CustomDescriptionInput(label: 'Descrição', hint: 'Informe uma descrição',),
          SizedBox(
            height: 32,
          ),
          DropdownButtonFormField<String>(
            hint: Text('Selecione a empresa'),
            value: (dropDownOrganizationValue.isEmpty ? null : dropDownOrganizationValue),
            onChanged: (newValue) => {
              setState(() => {dropDownOrganizationValue = newValue!})
            },
            items: organizationList.map((String e) => DropdownMenuItem(value: e, child: Text(e))
            ).toList(),
            decoration: InputDecoration(
              labelText: "Concedente",
              contentPadding: EdgeInsets.all(8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? newValue) => {
                  setState(() => {isChecked = newValue!})
                }
              ),
              Text('Remunerado')
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton.icon(
            onPressed: () {
              //navega para a rota '/dashboard' quando o botão é clicado
              Navigator.of(context).pushReplacementNamed('/dashboard');
            },
            icon: Icon(Icons.save),
            label: Text('Salvar'),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 18, 73, 41),
              minimumSize: Size(100, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              textStyle: TextStyle(
                fontSize: 16
              )
            ),
          ),
        ]),
    );
  }
}