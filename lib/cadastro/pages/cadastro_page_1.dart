import 'package:flutter/material.dart';

import 'package:raro_budget_app/core/ui/custom_elevated_button_continuar.dart';

import '../../core/ui/class_estilos_textos.dart';

class CadastroPage1 extends StatefulWidget {
  const CadastroPage1({super.key, required this.controller});
  final PageController controller;

  @override
  State<CadastroPage1> createState() => _CadastroPage1State();
}



class _CadastroPage1State extends State<CadastroPage1> {

  void proximaPagina() {
    widget.controller.nextPage(duration: const Duration(milliseconds: 30), curve: Curves.bounceIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 48.0, top: 74),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 320.0),
              child: Image.asset('assets/images/logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.5, right: 112, bottom: 8),
              child: Text(
                'Bem-vindo',
                style: ClassEstilosTextos.azul48w400roboto,
              ),
            ),
            Text(
              'Por favor insira seus dados nos campos abaixo.',
              style: ClassEstilosTextos.roxo20w500roboto,
            ),
            const SizedBox(
              height: 46,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 48, top: 112),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Nome',
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 48),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 48.0, top: 96),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text('VOLTAR'),
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const Text('1/4'),
                   CustomElevatedButtonContinuar(titulo: 'CONTINUAR', onPressed: () {
                    proximaPagina();
                  },)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
