import 'package:extrato_bancario_application/app/module/bank_statement/data/data.dart';
import '../../domain/domain.dart';

class SavingAccountRepository extends BankStatementRepository {
  final BankAccountSource _savingAccountSource;

  SavingAccountRepository({required BankAccountSource savingAccountSource})
      : _savingAccountSource = savingAccountSource;

  @override
  Future<BankStatement> getAccountTransactions(String token) async {
    final currentAccountStatement =
        await _savingAccountSource.getTransactions(token: token);
    return currentAccountStatement;
  }
}
