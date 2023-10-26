import 'package:flutter/material.dart';

import 'class_app_colors.dart';
import 'class_estilos_textos.dart';

class CustomElevatedButtonContinuar extends StatelessWidget {

  final String titulo;
  final IconData? icone;
  final void Function()? onPressed;
  final Color? cor;
  final double? width;
  final double? height;

  const CustomElevatedButtonContinuar({super.key, required this.titulo, this.icone, this.onPressed, this.cor, this.width, this.height});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 116,
        height: 32,
        decoration: const BoxDecoration(
          gradient: ClassAppColors.linearAzul,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              titulo,
              style: ClassEstilosTextos.branco14w400roboto,
            ),
            const Icon(Icons.arrow_forward_outlined, color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
