import '../../domain/domain.dart';

class BankTransactionsModel extends BankTransactions {
  BankTransactionsModel({
    int? type,
    String? description,
    String? identification,
    String? date,
    int? value,
    int? balanceAfterOperation,
    int? operation,
  }) : super(
            type: type,
            description: description,
            identification: identification,
            date: date,
            balanceAfterOperation: balanceAfterOperation,
            operation: operation);

  BankTransactionsModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    description = json['description'];
    identification = json['identification'];
    date = json['date'];
    value = json['value'];
    balanceAfterOperation = json['balance_after_operation'];
    operation = json['operation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['description'] = description;
    data['identification'] = identification;
    data['date'] = date;
    data['value'] = value;
    data['balance_after_operation'] = balanceAfterOperation;
    data['operation'] = operation;
    return data;
  }
}
