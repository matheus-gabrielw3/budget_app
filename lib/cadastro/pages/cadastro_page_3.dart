import 'package:flutter/material.dart';

import '../../core/ui/class_estilos_textos.dart';
import '../../core/ui/custom_elevated_button_continuar.dart';

class CadastroPage3 extends StatefulWidget {
  final PageController controller;
  const CadastroPage3({ super.key, required this.controller });

  @override
  State<CadastroPage3> createState() => _CadastroPage3State();
}

class _CadastroPage3State extends State<CadastroPage3> {
    void proximaPagina() {
    widget.controller.nextPage(duration: const Duration(milliseconds: 30), curve: Curves.bounceIn);
  }

  void paginaAnterior() {
    widget.controller.jumpToPage(1);
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
              'Leia com atenção e aceite',
              style: ClassEstilosTextos.roxo20w500roboto,
            ),
             Padding(
              padding: const EdgeInsets.only(right: 22, top: 44),
              child: Text('Lorem Ipsum neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit. Ipsum neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit. Nque porro  est qui dolorem ipsum quia dolor sit amet, , adipisci velit. Quisquam est qui dolorem ipsum. . Nque porro  est qui dolorem ipsum quia dolor sit amet, , adipisci velit. Quisquam est qui dolorem ipsum. . Nque porro  est qui dolorem ipsum quia dolor sit amet, , adipisci velit. Quisquam est qui dolorem ipsum. . Nque porro  est qui dolorem ipsum quia dolor sit amet, , adipisci velit. Quisquam est qui dolorem ipsum. . Nque porro  est qui dolorem ipsum quia dolor sit amet, , adipisci velit. Quisquam est qui dolorem ipsum. ',
              style: ClassEstilosTextos.preto16w400robotoLetter, textAlign: TextAlign.justify,
              )
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Row(
                children: [
                  Checkbox(shape: const CircleBorder() ,value: false, onChanged: (value) {
                  },),
                  const Flexible(child: Text('Eu li e aceito os termos e condições\ne a Política de privacidade do budget.'))
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.only(right: 48.0, top: 45),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () { paginaAnterior();},
                    label: const Text('VOLTAR'),
                    icon: const Icon(Icons.arrow_back),

                  ),
                  const Text('3/4'),
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