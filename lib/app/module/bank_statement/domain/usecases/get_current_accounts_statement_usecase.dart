
import '../helpers/helpers.dart';
import '../repositories/repositories.dart';
import './interfaces/interfaces.dart';

class GetCurrentAccountsStatementUsecase extends GetBankStatementUsecase {
  final BankStatementRepository _currentAccountStatementRepository;

  GetCurrentAccountsStatementUsecase({
    required BankStatementRepository currentAccountStatementRepository,
  }) : _currentAccountStatementRepository = currentAccountStatementRepository;

  @override
  Future call(String token) async {
    try {
      final accountStatements = await _currentAccountStatementRepository
          .getAccountTransactions(token);
      return accountStatements;
    } catch (exeptions) {
      throw DomainError();
    }
  }
}
