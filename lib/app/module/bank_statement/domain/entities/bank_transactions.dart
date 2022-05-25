import 'package:equatable/equatable.dart';

class BankTransactions extends Equatable {
  int? type;
  String? description;
  String? identification;
  String? date;
  double? value;
  double? balanceAfterOperation;
  int? operation;

  BankTransactions(
      {this.type,
      this.description,
      this.identification,
      this.date,
      this.value,
      this.balanceAfterOperation,
      this.operation});

  @override
  List<Object?> get props => [
        type,
        description,
        identification,
        date,
        value,
        balanceAfterOperation,
        operation
      ];
}
