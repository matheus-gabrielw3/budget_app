
import 'package:flutter_modular/flutter_modular.dart';
import 'package:raro_budget_app/login/login_page.dart';
import 'package:raro_budget_app/login/splash_screen.dart';

class LoginModule extends Module{
  @override
  void routes(r) {
    r.child('/', child: (context) => const SplashScreen());
    r.child('/cadastro', child: (context) => const LoginPage());
  }
}