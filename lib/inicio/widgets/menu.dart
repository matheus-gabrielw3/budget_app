// ignore_for_file: unused_field

import 'package:flutter/material.dart';

import '../../core/ui/class_app_colors.dart';
import '../../core/ui/class_estilos_textos.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String _selectedValue = '1';

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration:
                const BoxDecoration(gradient: ClassAppColors.linearAzul),
            child: Text(
              'Olá José',
              style: ClassEstilosTextos.branco24w500roboto,
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 27.0, top: 14, bottom: 15),
            child: Text('Perfil', style: ClassEstilosTextos.roxo14w500roboto,)
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(
                left: 27.0,
              ),
              child: Text(
                'Cadastro',
                style: ClassEstilosTextos.preto16w500robot,
              ),
            ),
            selected: _selectedIndex == 0,
            onTap: () {
              // Update the state of the app
              _onItemTapped(0);
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          const Divider(),
           Padding(
            padding: EdgeInsets.only(left: 27.0, top: 14, bottom: 15),
            child: Text('Conta', style: ClassEstilosTextos.roxo14w500roboto,),
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(
                left: 27.0,
              ),
              child: Text(
                'Gerenciar cartões',
                style: ClassEstilosTextos.preto16w500robot,
              ),
            ),
            selected: _selectedIndex == 0,
            onTap: () {
              // Update the state of the app
              _onItemTapped(0);
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(
                left: 27.0,
              ),
              child: Text(
                'Investimentos',
                style: ClassEstilosTextos.preto16w500robot,
              ),
            ),
            selected: _selectedIndex == 0,
            onTap: () {
              // Update the state of the app
              _onItemTapped(0);
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          const Divider(),
           Padding(
            padding: EdgeInsets.only(left: 27.0, top: 14, bottom: 15),
            child: Text('Segurança', style: ClassEstilosTextos.roxo14w500roboto,),
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(
                left: 27.0,
              ),
              child: Text(
                'Alterar senha',
                style: ClassEstilosTextos.preto16w500robot,
              ),
            ),
            selected: _selectedIndex == 0,
            onTap: () {
              // Update the state of the app
              _onItemTapped(0);
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          const Divider(),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(
                left: 27.0,
              ),
              child: Text(
                'Ajuda',
                style: ClassEstilosTextos.preto16w500robot,
              ),
            ),
            selected: _selectedIndex == 0,
            onTap: () {
              // Update the state of the app
              _onItemTapped(0);
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
           SizedBox(
            height: MediaQuery.of(context).size.height * 0.080,
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          TextButton(onPressed: () {}, child: const Text('Sair'))
        ],
      ),
    );
  }
}
