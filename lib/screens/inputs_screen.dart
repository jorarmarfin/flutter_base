import 'package:flutter/material.dart';

import '../components/components.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);
  static String routerName = 'inputs';
  @override
  Widget build(BuildContext context) {
    final Map<String, String> formValues = {
      'first_name': 'Luis',
      'last_name': 'Mayta',
      'email': 'luis@b.com'
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            child: Column(children: [
              const ComponentInputField(tipoInput: TextInputType.text),
              const SizedBox(
                height: 20,
              ),
              const ComponentInputField(
                  tipoInput: TextInputType.text, isPassword: true),
              Radio(
                  value: 1,
                  groupValue: 0,
                  activeColor: Colors.purple,
                  onChanged: (value) {
                    print(value);
                  }),
              Radio(
                  value: 2,
                  groupValue: 2,
                  activeColor: Colors.purple,
                  onChanged: (value) {
                    print(value);
                  }),
              DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: '1', child: Text('data1')),
                    DropdownMenuItem(value: '2', child: Text('data2')),
                    DropdownMenuItem(value: '3', child: Text('data3')),
                  ],
                  onChanged: (value) {
                    print(value);
                  }),
              ElevatedButton(
                  onPressed: () {
                    print(formValues);
                  },
                  child: const Text('Enviar')),
            ]),
          ),
        ),
      ),
    );
  }
}
