import 'package:flutter/material.dart';
import 'package:raro_budget_app/core/ui/class_app_colors.dart';

class Home extends StatefulWidget {

  const Home({ super.key });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text(''),),
           body: Container(
            height: 400,
            width: 400,
            decoration: const BoxDecoration(
              gradient: ClassAppColors.linearAzul
            ),
           ),
       );
  }
}