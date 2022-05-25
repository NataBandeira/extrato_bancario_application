import '../../data/data.dart';

class ExternalCurrentAccountSource implements BankAccountSource {
  @override
  Future<BankStatementModel> getTransactions({required String token}) async {
    return BankStatementModel(
      balanceAvailable: 593.60,
      lastUpdate: "1653066205",
      accountType: 001,
      bankTransactions: [
        BankTransactionsModel(
            type: 3,
            description: "Pix recebido de Maria",
            identification: "101010",
            date: "1652641405",
            value: 100,
            balanceAfterOperation: 593.60,
            operation: 0),
        BankTransactionsModel(
            type: 1,
            description: "",
            identification: "121233",
            date: "1652627005",
            value: 500,
            balanceAfterOperation: 500,
            operation: 0),
        BankTransactionsModel(
            type: 1,
            description: "",
            identification: "121233",
            date: "1652389405",
            value: 500,
            balanceAfterOperation: 500,
            operation: 0),
        BankTransactionsModel(
            type: 1,
            description: "",
            identification: "121233",
            date: "1650663025",
            value: 500,
            balanceAfterOperation: 500,
            operation: 0),
        BankTransactionsModel(
            type: 1,
            description: "",
            identification: "121233",
            date: "1650497425",
            value: 500,
            balanceAfterOperation: 500,
            operation: 0),
        BankTransactionsModel(
            type: 1,
            description: "",
            identification: "121233",
            date: "1646253625",
            value: 500,
            balanceAfterOperation: 500,
            operation: 0)
      ],
    );
  }
}
