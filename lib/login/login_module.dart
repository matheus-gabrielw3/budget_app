import 'package:flutter_modular/flutter_modular.dart';
import 'package:raro_budget_app/cadastro/cadastro_module.dart';
import 'package:raro_budget_app/login/login_page.dart';
import 'package:raro_budget_app/login/splash_screen.dart';
import 'erroconexao.dart';
import 'loginsenha_page.dart';

class LoginModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (context) => const SplashScreen());
    r.child('/login', child: (context) => const LoginPage());
    r.child('/loginsenha', child: (context) => const LoginsenhaPage());
    r.child('/erroconexao', child: (context) => const Erroconexao());
    r.module('/cadastro', module: CadastroModule());
  }
}
