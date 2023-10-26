import 'package:flutter/material.dart';

import '../../core/ui/class_estilos_textos.dart';
import '../../core/ui/custom_elevated_button_continuar.dart';

class CadastroPage4 extends StatefulWidget {
  final PageController controller;
  const CadastroPage4({super.key, required this.controller});

  @override
  State<CadastroPage4> createState() => _CadastroPage4State();
}

class _CadastroPage4State extends State<CadastroPage4> {
  void proximaPagina() {
    widget.controller.nextPage(
        duration: const Duration(milliseconds: 30), curve: Curves.bounceIn);
  }

  void paginaAnterior() {
    widget.controller.jumpToPage(2);
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
              'Bem-vindo! Agora crie seu senha contendo:',
              style: ClassEstilosTextos.roxo20w500roboto,
            ),
            const SizedBox(
              height: 29,
            ),
            const Text('pelo menos oito caracteres', style: TextStyle(color: Colors.black38),),
            SizedBox(height: 4,),
            const Text('letras maiúsculas, letras minúsculas e símbolos',  style: TextStyle(color: Colors.black38)),
            Padding(
              padding: const EdgeInsets.only(right: 48, top: 32),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Crie uma senha',
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
                  labelText: 'Confirme sua senha',
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'O CPF é necessário para conectar suas contas.',
              style: TextStyle(color: Colors.black45),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 48.0, top: 145),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {paginaAnterior();},
                    label: const Text('VOLTAR'),
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const Text('4/4'),
                  CustomElevatedButtonContinuar(
                    titulo: 'CONTINUAR',
                    onPressed: () {
                      proximaPagina();
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
