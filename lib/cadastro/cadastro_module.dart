import 'package:flutter_modular/flutter_modular.dart';
import 'package:raro_budget_app/cadastro/cadastro_page.dart';

class CadastroModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (context) => const CadastroPage());
  }
}
