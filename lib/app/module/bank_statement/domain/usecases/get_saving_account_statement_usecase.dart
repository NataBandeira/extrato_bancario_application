import '../repositories/repositories.dart';
import './interfaces/interfaces.dart';

class GetSavingAccountStatementUsecase extends GetBankStatementUsecase {
  final BankStatementRepository _savingAccountStatementRepository;

  GetSavingAccountStatementUsecase({
    required BankStatementRepository savingAccountStatementRepository,
  }) : _savingAccountStatementRepository = savingAccountStatementRepository;

  @override
  Future call(String token) async {
    final accountStatement =
        _savingAccountStatementRepository.getAccountTransactions(token);

    return accountStatement;
  }
}
