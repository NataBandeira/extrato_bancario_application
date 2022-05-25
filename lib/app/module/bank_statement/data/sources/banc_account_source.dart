import 'package:extrato_bancario_application/app/module/bank_statement/data/data.dart';

abstract class BankAccountSource {
  Future<BankStatementModel> getTransactions({
    required String token,
  });
}
