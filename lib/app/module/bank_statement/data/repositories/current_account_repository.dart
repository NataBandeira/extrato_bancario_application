import 'package:extrato_bancario_application/app/module/bank_statement/data/data.dart';
import '../../domain/domain.dart';

class CurrentAccountRepository extends BankStatementRepository {
  final BankAccountSource _bankAccountSource;

  CurrentAccountRepository({required BankAccountSource bankAccountSource})
      : _bankAccountSource = bankAccountSource;

  @override
  Future<BankStatement> getAccountTransactions(String token) async {
    final currentAccountStatement =
        await _bankAccountSource.getTransactions(token: token);
    return currentAccountStatement;
  }
}
