import 'package:flutter_modular/flutter_modular.dart';
import 'package:raro_budget_app/cadastro/cadastro_module.dart';
class AppModule extends Module {

  @override
  void binds(i) {}

  @override
  void routes(r) {
      r.module('/', module: CadastroModule());
  }
}