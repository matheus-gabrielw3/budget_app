import 'package:flutter/material.dart';
import 'package:raro_budget_app/core/ui/class_estilos_textos.dart';

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
              child: Text('Vamos\ncomeçar', style: ClassEstilosTextos.azul48w400roboto,),
            ),
            const Text('Novo usuário? Crie uma conta'),
            const SizedBox(
              height: 46,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 48),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Insira seu email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 48.0, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(114, 36),
                        elevation: 3,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30)))
                      ),
                      onPressed: () {},
                      child: Text('CONTINUAR', style: ClassEstilosTextos.branco14w400roboto,)),
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(right: 48.0, top: 52),
              child: Center(child: Text('ou', style: ClassEstilosTextos.cinza14w400roboto,)),
            ),
            const SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.only(right:45.0),
              child: Column(
                children: [
                   OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(

                    ),
                      onPressed: () {},
                      icon: const Icon(Icons.email_outlined),
                      label:  Text('CONTINUAR COM O GOOGLE', style: ClassEstilosTextos.cinza14w400roboto,)),
                      const SizedBox(height: 30,),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                    ),
                      onPressed: () {},
                      icon: const Icon(Icons.facebook),
                      label:  Text('CONTINUAR COM O FACEBOOK', style: ClassEstilosTextos.cinza14w400roboto,))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
