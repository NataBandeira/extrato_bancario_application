import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/pages/account_statement/account_statement_page.dart';

class BankStatementModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => AccountStatementPage(),
        ),
      ];
}
