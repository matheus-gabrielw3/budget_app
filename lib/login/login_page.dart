import 'package:flutter/material.dart';
import 'package:raro_budget_app/core/ui/class_estilos_textos.dart';
import 'package:raro_budget_app/login/loginsenha_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../core/ui/custom_elevated_button_continuar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 48.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 320.0),
              child: Image.asset('assets/images/logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.5, right: 112, bottom: 8),
              child: Text(
                'Vamos\ncomeçar',
                style: ClassEstilosTextos.azul48w400roboto,
              ),
            ),
            Row(
              children: [
                Text(
                  'Novo usuário? ',
                  style: ClassEstilosTextos.cinza14w400roboto,
                ),
                InkWell(
                  child: Text('Crie uma conta',
                      style: ClassEstilosTextos.roxo13w500roboto),
                  onTap: () {
                    Modular.to.navigate("/cadastro");
                  },
                )
              ],
            ),
            const SizedBox(
              height: 46,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 48),
              child: TextFormField(
                style: ClassEstilosTextos.cinza14w400roboto,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'E-mail',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 48.0, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomElevatedButtonContinuar(
                    titulo: "CONTINUAR",
                    onPressed: () {
                      Modular.to.navigate('/loginsenha');
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 48.0, top: 52),
              child: Center(
                  child: Text(
                'ou',
                style: ClassEstilosTextos.cinza14w400roboto,
              )),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 45.0),
              child: Column(
                children: [
                  OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(),
                      onPressed: () {},
                      icon: const Icon(Icons.email_outlined),
                      label: Text(
                        'CONTINUAR COM O GOOGLE',
                        style: ClassEstilosTextos.cinza14w400roboto,
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(),
                      onPressed: () {},
                      icon: const Icon(Icons.facebook),
                      label: Text(
                        'CONTINUAR COM O FACEBOOK',
                        style: ClassEstilosTextos.cinza14w400roboto,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
