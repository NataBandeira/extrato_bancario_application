import 'package:extrato_bancario_application/app/module/bank_statement/domain/usecases/get_saving_account_statement_usecase.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'module/bank_statement/domain/domain.dart';
import 'module/bank_statement/data/data.dart';
import 'module/bank_statement/infra/infra.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => ExternalSavingAccountSource()),
        Bind.factory((i) => SavingAccountRepository(
            savingAccountSource: i<ExternalSavingAccountSource>())),
        Bind.factory((i) => GetSavingAccountStatementUsecase(
            savingAccountStatementRepository: i<SavingAccountRepository>())),
        Bind.singleton((i) => ExternalCurrentAccountSource()),
        Bind.factory((i) => CurrentAccountRepository(
            bankAccountSource: i<ExternalCurrentAccountSource>())),
        Bind.factory((i) => GetCurrentAccountsStatementUsecase(
            currentAccountStatementRepository: i<CurrentAccountRepository>())),
      ];

  @override
  List<ModularRoute> get routes => [];
}
