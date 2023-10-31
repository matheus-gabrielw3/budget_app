import 'package:flutter/material.dart';
import 'package:raro_budget_app/core/ui/class_estilos_textos.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../core/ui/custom_elevated_button_continuar.dart';

class LoginsenhaPage extends StatefulWidget {
  const LoginsenhaPage({super.key});

  @override
  State<LoginsenhaPage> createState() => _LoginsenhaPageState();
}

class _LoginsenhaPageState extends State<LoginsenhaPage> {
  bool mostraSenha = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 48.0, top: 74),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 320.0,
              ),
              child: Image.asset('assets/images/logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.5, right: 112, bottom: 8),
              child: Text(
                'Insira sua \nsenha',
                style: ClassEstilosTextos.azul48w400roboto,
              ),
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
              padding: const EdgeInsets.only(right: 48, top: 30),
              child: TextFormField(
                style: ClassEstilosTextos.cinza14w400roboto,
                decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    labelText: 'Senha',
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          mostraSenha = !mostraSenha;
                        });
                      },
                      child: Icon(
                        mostraSenha ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "RECUPERAR SENHA",
                      style: ClassEstilosTextos.roxo13w500roboto,
                    ),
                  ),
                  CustomElevatedButtonContinuar(
                    titulo: "CONTINUAR",
                    onPressed: () {
                      Modular.to.navigate('/erroconexao');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
