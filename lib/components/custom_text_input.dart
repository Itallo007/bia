import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final String? label;
  final String? hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextInput({
    Key? key,
    required this.label,
    this.hint,
    this.prefixIcon,
    this.suffixIcon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: Color.fromARGB(117, 117, 116, 116),
        ),
        labelText: label,
        contentPadding: EdgeInsets.all(8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon
      ),
      validator: (text) {
        if(text == null || text.isEmpty) {
          return 'Preencha este campo!';
        }
        return null;
      },
    );
  }
}