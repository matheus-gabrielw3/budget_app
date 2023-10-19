import 'package:flutter_modular/flutter_modular.dart';
import 'package:raro_budget_app/home/home.dart';
class AppModule extends Module {

  @override
  void binds(i) {}

  @override
  void routes(r) {
      r.child('/', child: (context) => const Home());
  }
}