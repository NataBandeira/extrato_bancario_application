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
            date: "1652641405",
            value: 100,
            balanceAfterOperation: 376.40,
            operation: 1),
        BankTransactionsModel(
            type: 1,
            description: "pagamento realizado no Supermecado Central",
            identification: "121233",
            date: "1652627005",
            value: 493.60,
            balanceAfterOperation: 276.40,
            operation: 0),
        BankTransactionsModel(
            type: 3,
            description: "enviado de Amanda Ferreira",
            identification: "121233",
            date: "1652389405",
            value: 80,
            balanceAfterOperation: 770.00,
            operation: 0),
        BankTransactionsModel(
            type: 2,
            description: "em dinheiro realizado na agência",
            identification: "121233",
            date: "1650663025",
            value: 150.00,
            balanceAfterOperation: 850.00,
            operation: 1),
        BankTransactionsModel(
            type: 3,
            description: "recebido de Luiza marques",
            identification: "121233",
            date: "1650497425",
            value: 200.00,
            balanceAfterOperation: 700.00,
            operation: 1),
        BankTransactionsModel(
            type: 2,
            description: "em dinheiro realizado na agência",
            identification: "121233",
            date: "1646253625",
            value: 500.0,
            balanceAfterOperation: 500.00,
            operation: 1)
      ],
    );
  }
}
