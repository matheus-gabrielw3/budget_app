import 'package:flutter/material.dart';

class ClassAppColors {
  static const Color amarelo = Color(0xffFAC736);
  static const Color verde = Color(0xff58B368);
  static const Color rosa = Color(0xffF5487F);
  static const Color ciano = Color(0xff44C2FD);
  static const Color azulEscuro = Color(0xFF09223B);
  static const Color roxo = Color(0xFF343090);
  static const Color rosaEscuro = Color(0xFFA29EFF);
  static const LinearGradient linearAzul = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(0.2, 1),
    colors: <Color>[
      Color(0xff343090),
      Color(0xff44C2FD),
    ], 
    tileMode: TileMode.mirror,
  );


}
