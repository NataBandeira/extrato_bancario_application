import 'package:equatable/equatable.dart';

import 'entities.dart';

class BankStatement extends Equatable {
  double? balanceAvailable;
  String? lastUpdate;
  int? accountType;
  List<BankTransactions>? bankTransactions;

  BankStatement(
      {this.balanceAvailable,
      this.lastUpdate,
      this.accountType,
      this.bankTransactions});

  @override
  List<Object?> get props => [balanceAvailable, lastUpdate, accountType];
}
