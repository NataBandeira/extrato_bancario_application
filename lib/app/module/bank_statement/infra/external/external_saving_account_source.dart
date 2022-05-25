import '../../data/data.dart';

class ExternalCurrentAccountSource implements BankAccountSource {
  @override
  Future<BankStatementModel> getTransactions({required String token}) async {
    return BankStatementModel(
      balanceAvailable: 376.40,
      lastUpdate: "1653066205",
      accountType: 001,
      bankTransactions: [
        BankTransactionsModel(
            type: 3,
            description: "recebido de Marcus Vinicius",
            identification: "101010",
            date: "1644007225",
            value: 1000,
            balanceAfterOperation: 376.40,
            operation: 1),
        BankTransactionsModel(
            type: 2,
            description: "em dinheiro realizado na agência",
            identification: "121233",
            date: "1643920825",
            value: 1500.0,
            balanceAfterOperation: 1500.00,
            operation: 1),
      ],
    );
  }
}
