import 'package:flutter/material.dart';

class ComponentInputField extends StatelessWidget {
  const ComponentInputField({
    Key? key,
    required this.tipoInput,
    this.isPassword = false,
  }) : super(key: key);
  final TextInputType tipoInput;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      // initialValue: 'Luis Mayta',
      keyboardType: tipoInput,
      obscureText: isPassword,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        print(value);
      },
      validator: (value) {
        if (value == null) return 'no ingresaste';
        return value.length < 3 ? 'minimo 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      inputFormatters: [],
      decoration: const InputDecoration(
        hintText: 'Nombre del usuario',
        labelText: 'Nombre',
        helperText: 'Solo letras',
        counterText: '3 Caracteres',
        suffixIcon: Icon(Icons.thumb_up_sharp),
        icon: Icon(Icons.assignment_ind),
      ),
    );
  }
}
