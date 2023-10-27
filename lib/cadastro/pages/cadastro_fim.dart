import 'package:flutter/material.dart';
import 'package:raro_budget_app/core/ui/class_app_colors.dart';
import 'package:raro_budget_app/core/ui/class_estilos_textos.dart';

class CadastroFim extends StatefulWidget {
  final PageController controller;
  const CadastroFim({super.key, required this.controller});

  @override
  State<CadastroFim> createState() => _CadastroFimState();
}

class _CadastroFimState extends State<CadastroFim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fundo.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: null /* add child content here */,
          ),
          Container(
            decoration:
                BoxDecoration(color: Colors.deepPurple.withOpacity(0.7)),
            child: null /* add child content here */,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          const SizedBox(
            height: 64,
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Vectorultime.png'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 145.0),
                child: Text(
                  'Agora sim!\nVocê terá o\ncontrole\nfinanceiro nas\nsuas mãos!',
                  style: ClassEstilosTextos.azul34w700roboto,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 235.0, top: 24),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ClassAppColors.ciano,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(34))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12, right: 6, left: 6),
                    child:  Text('VAMOS LÁ!', style: ClassEstilosTextos.branco14w500roboto,),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
