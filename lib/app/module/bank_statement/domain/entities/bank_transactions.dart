class BankTransactions {
  int? type;
  String? description;
  String? identification;
  String? date;
  int? value;
  int? balanceAfterOperation;
  int? operation;

  BankTransactions(
      {this.type,
      this.description,
      this.identification,
      this.date,
      this.value,
      this.balanceAfterOperation,
      this.operation});
}
