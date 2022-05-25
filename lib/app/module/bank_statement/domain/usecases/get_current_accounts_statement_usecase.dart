import '../repositories/repositories.dart';
import './interfaces/interfaces.dart';

class GetCurrentAccountsStatementUsecase extends GetBankStatementUsecase {
  final BankStatementRepository _bankStatementRepository;

  GetCurrentAccountsStatementUsecase({
    required BankStatementRepository bankStatementRepository,
  }) : _bankStatementRepository = bankStatementRepository;

  @override
  Future call(String token) async {
    final accountStatements =
        await _bankStatementRepository.getAccountTransactions(token);

    return accountStatements;
  }
}
