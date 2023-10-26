import 'package:flutter/material.dart';

class CadastroFim extends StatefulWidget {
  final PageController controller;
  const CadastroFim({ super.key, required this.controller });

  @override
  State<CadastroFim> createState() => _CadastroFimState();
}

class _CadastroFimState extends State<CadastroFim> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            child: Column(
              children: [
                Image.asset('assets/images/backgroundfundo.png', fit: BoxFit.cover,)
              ],
            ),
           ),
       );
  }
}