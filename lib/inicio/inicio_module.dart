import 'package:flutter_modular/flutter_modular.dart';
import 'package:raro_budget_app/inicio/inicio_page.dart';

class InicioModule extends Module{
  @override
  void routes(r) {
    r.child('/', child: (context) => const InicioPage());
  }
}