import 'package:flutter_modular/flutter_modular.dart';
import 'package:raro_budget_app/cadastro/cadastro_page.dart';
import 'package:raro_budget_app/inicio/inicio_module.dart';

class CadastroModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (context) => const CadastroPage());
    r.module('/inicio', module: InicioModule());
  }
}
