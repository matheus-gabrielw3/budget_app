import 'package:flutter/material.dart';
import 'package:raro_budget_app/core/ui/class_app_colors.dart';
import 'package:raro_budget_app/core/ui/class_estilos_textos.dart';

import '../core/custom_elevated_button_tentarnovamente.dart';
import '../core/ui/custom_elevated_button_continuar.dart';

class Erroconexao extends StatelessWidget {
  const Erroconexao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(gradient: ClassAppColors.linearAzul),
        ),
        title: Text(
          'Olá José',
          style: ClassEstilosTextos.branco24w500roboto,
        ),
        toolbarHeight: 80,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Erro na \nconexão",
              style: ClassEstilosTextos.azul48w400roboto,
            ),
            Padding(
              padding: const EdgeInsets.all(23.0),
              child: CustomElevatedButtontentarnobamente(
                titulo: "TENTE NOVAMENTE",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

