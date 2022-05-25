import '../../domain/domain.dart';
import 'bank_transactions_model.dart';

class BankStatementModel extends BankStatement {
  BankStatementModel(
      {double? balanceAvailable,
      String? lastUpdate,
      int? accountType,
      List<BankTransactionsModel>? bankTransactions})
      : super(
            balanceAvailable: balanceAvailable,
            lastUpdate: lastUpdate,
            accountType: accountType,
            bankTransactions: bankTransactions);

  BankStatementModel.fromJson(Map<String, dynamic> json) {
    balanceAvailable = json['balance_available'];
    lastUpdate = json['last_update'];
    accountType = json['account_type'];
    if (json['bank_transactions'] != null) {
      bankTransactions = <BankTransactions>[];
      json['bank_transactions'].forEach((v) {
        bankTransactions!.add(BankTransactionsModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['balance_available'] = balanceAvailable;
    data['last_update'] = lastUpdate;
    data['account_type'] = accountType;
    if (bankTransactions != null) {
      data['bank_transactions'] = bankTransactions!.map((v) {
        BankTransactionsModel bankTransactions = v as BankTransactionsModel;
        return bankTransactions.toJson();
      }).toList();
    }
    return data;
  }
}
