import 'package:flutter/material.dart';
import 'package:raro_budget_app/cadastro/pages/cadastro_fim.dart';
import 'package:raro_budget_app/cadastro/pages/cadastro_page_2.dart';

import 'pages/cadastro_page_1.dart';
import 'pages/cadastro_page_3.dart';
import 'pages/cadastro_page_4.dart';

class CadastroPage extends StatefulWidget {

  const CadastroPage({ super.key });

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
 final PageController controller = PageController();
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children:  <Widget>[
        Center(
          child: CadastroPage1(controller: controller,),
        ),
        Center(
          child: CadastroPage2(controller: controller,),
        ),
        Center(
          child: CadastroPage3(controller: controller,),
        ),
        Center(
          child: CadastroPage4(controller: controller,),
        ),
        Center(
          child: CadastroFim(controller: controller,),
        ),
      ],
    )
       );
  }
}