import 'package:flutter/material.dart';
import 'package:raro_budget_app/core/ui/class_app_colors.dart';
import 'package:raro_budget_app/core/ui/class_estilos_textos.dart';
import 'package:raro_budget_app/core/ui/class_icons.dart';
import 'package:raro_budget_app/core/ui/custom_elevated_button_continuar.dart';

import '../core/ui/custom_elevated_button_novo.dart';
import 'widgets/menu.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Olá, Jose',
          style: ClassEstilosTextos.branco24w500roboto,
        )),
        flexibleSpace: Container(
          decoration: const BoxDecoration(gradient: ClassAppColors.linearAzul),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 17, left: 15, right: 16),
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Saldo geral',
                            style: ClassEstilosTextos.roxo20w500roboto,
                          ),
                          const Icon(
                            Icons.visibility,
                            color: ClassAppColors.roxo,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: [
                          Text(
                            'R\$ 3.000,00',
                            style: ClassEstilosTextos.preto24w400roboto,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // -------------------------------------------------------- SESSION 2 ------------------------------------------//
          Padding(
            padding: const EdgeInsets.only(top: 17, left: 15, right: 16),
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Dia a dia',
                            style: ClassEstilosTextos.roxo20w500roboto,
                          ),
                          Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              gradient: ClassAppColors.linearAzul,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: DropdownButton(
                              items: List.empty(),
                              dropdownColor: Colors.white,
                              iconDisabledColor: Colors.white,
                              onChanged: (value) {},
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: [
                          Text(
                            'R\$ 3.000,00',
                            style: ClassEstilosTextos.preto24w400roboto,
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 185,
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text('Saídas'), Text('R\$ 5.000,00')],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Container(
                              width: 184,
                              height: 11,
                              decoration: BoxDecoration(
                                color: ClassAppColors.ciano,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Entradas'), Text('R\$ 8.000,00')],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: 11,
                          decoration: BoxDecoration(
                            color: ClassAppColors.amarelo,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // ------------------------------------- SESSION 3 ---------------------------------- //
          Padding(
            padding: const EdgeInsets.only(top: 17, left: 15, right: 16),
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Últimas transações',
                            style: ClassEstilosTextos.roxo20w500roboto,
                          ),
                          const Icon(Icons.arrow_forward_ios_outlined)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: [
                          Text(
                            'R\$ 398,30',
                            style: ClassEstilosTextos.preto24w400roboto,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'No momento',
                      style: ClassEstilosTextos.cinza14w400roboto,
                    ),
                    // Icon 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: ClassAppColors.amarelo,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ClassIcons.refeicao,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Refeição',
                                  style: ClassEstilosTextos.roxo16pw500roboto,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    '02/08/2021',
                                    style: ClassEstilosTextos.cinza14w400roboto,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Text(
                          '-R\$ 25,00',
                          style: ClassEstilosTextos.preto16w400robotoLetter,
                        )
                      ],
                    ),

                    // Icon 2

                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: ClassAppColors.verde,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ClassIcons.onibus,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Refeição',
                                  style: ClassEstilosTextos.roxo16pw500roboto,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    '04/08/2021',
                                    style: ClassEstilosTextos.cinza14w400roboto,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Text(
                          '-R\$ 57,30',
                          style: ClassEstilosTextos.preto16w400robotoLetter,
                        )
                      ],
                    ),

                    // ICON 3

                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: ClassAppColors.azulEscuro,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ClassIcons.educacao,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Refeição',
                                  style: ClassEstilosTextos.roxo16pw500roboto,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    '05/08/2021',
                                    style: ClassEstilosTextos.cinza14w400roboto,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Text(
                          '-R\$ 316,00',
                          style: ClassEstilosTextos.preto16w400robotoLetter,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    // acabou //
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedButtonNovo(titulo: 'NOVO CONTROLE', width: 182, height: 40, icone: Icons.add, onPressed: () {},),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
      drawer: const Menu(),
    );
  }
}
