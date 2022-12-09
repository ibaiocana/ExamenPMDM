import 'package:flutter/material.dart';

class CustomTextFormField18 extends StatelessWidget {
  final String? labelText;
  final bool obscureText;
  final Widget? suffixIcon;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomTextFormField18({
    Key? key,
    required this.labelText,
    required this.obscureText,
    this.suffixIcon,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      validator: (value) {
        if (value!.length < 6) {
          return 'Minimo 6 Caracteres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value,
    );
  }
}
