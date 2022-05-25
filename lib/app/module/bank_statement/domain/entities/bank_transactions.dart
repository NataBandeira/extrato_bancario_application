class BankTransactions {
  String? type;
  String? description;
  String? identification;
  String? date;
  String? value;
  String? balanceAfterOperation;
  String? operation;

  BankTransactions(
      {this.type,
      this.description,
      this.identification,
      this.date,
      this.value,
      this.balanceAfterOperation,
      this.operation});
}
