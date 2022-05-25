import 'entities.dart';

class BankStatement {
  double? balanceAvailable;
  String? lastUpdate;
  String? accountType;
  List<BankTransactions>? bankTransactions;

  BankStatement(
      {this.balanceAvailable,
      this.lastUpdate,
      this.accountType,
      this.bankTransactions});
}
