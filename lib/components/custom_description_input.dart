import 'package:flutter/material.dart';

class CustomDescriptionInput extends StatelessWidget {
  final String label;
  final String? hint;

  const CustomDescriptionInput({
    Key? key,
    required this.label,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 150),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          hintStyle: TextStyle(
            color: Color.fromARGB(117, 117, 116, 116),
          ),
          contentPadding: EdgeInsets.all(8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        maxLines: null,
        validator: (text) {
        if(text == null || text.isEmpty) {
          return 'Preencha este campo!';
        }
        return null;
      },
      ),
    );
  }
}