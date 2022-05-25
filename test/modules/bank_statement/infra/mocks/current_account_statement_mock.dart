import 'package:extrato_bancario_application/app/module/bank_statement/data/data.dart';

final remoteCurrentAccountMock = BankStatementModel(
    balanceAvailable: 593.60,
    lastUpdate: "1653066205",
    accountType: 013,
    bankTransactions: [
      BankTransactionsModel(
          type: 1,
          description: "",
          identification: "121233",
          date: "1653066205",
          value: 500,
          balanceAfterOperation: 500,
          operation: 0)
    ]);
