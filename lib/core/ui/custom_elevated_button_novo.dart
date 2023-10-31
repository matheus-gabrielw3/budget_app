import 'package:flutter/material.dart';

import 'class_app_colors.dart';
import 'class_estilos_textos.dart';

class CustomElevatedButtonNovo extends StatelessWidget {

  final String titulo;
  final IconData? icone;
  final void Function()? onPressed;
  final Color? cor;
  final double? width;
  final double? height;

  const CustomElevatedButtonNovo({super.key, required this.titulo, this.icone, this.onPressed, this.cor, this.width, this.height});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          gradient: ClassAppColors.linearAzul,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Icon(icone, color: Colors.white, size: 24,),
             const SizedBox(width: 4,),
            Text(
              titulo,
              style: ClassEstilosTextos.branco14w500roboto,
            ),
          ],
        ),
      ),
    );
  }
}
