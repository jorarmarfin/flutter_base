import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);
  static String routerName = 'inputs';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: [
            TextFormField(
              autofocus: true,
              // initialValue: 'Luis Mayta',
              textCapitalization: TextCapitalization.words,
              onChanged: (value) {
                print(value);
              },
              validator: (value) {
                if (value == null) return 'no ingresaste';
                return value.length < 3 ? 'minimo 3 letras' : null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                hintText: 'Nombre del usuario',
                labelText: 'Nombre',
                helperText: 'Solo letras',
                counterText: '3 Caracteres',
                suffixIcon: Icon(Icons.thumb_up_sharp),
                icon: Icon(Icons.assignment_ind),
                // border: OutlineInputBorder(
                //     borderRadius: BorderRadius.all(Radius.circular(10)))
              ),
            )
          ]),
        ),
      ),
    );
  }
}
