import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 48.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 74),
              child: Image.asset('assets/images/logo.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16.5, right: 112, bottom: 8),
              child: Text('Vamos\ncomeçar'),
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
                  labelText: 'Enter your username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 48.0, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(),
                      onPressed: () {},
                      child: const Text('CONTINUAR')),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 48.0, top: 52),
              child: Center(child: Text('ou')),
            ),
            const SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.only(right:45.0),
              child: Column(
                children: [
                   OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.email_outlined),
                      label: const Text('CONTINUAR COM O GOOGLE')),
                      const SizedBox(height: 30,),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(8),
                    ),
                      onPressed: () {},
                      icon: const Icon(Icons.facebook),
                      label: const Text('CONTINUAR COM O FACEBOOK'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
