import '../repositories/repository.dart';
import './interfaces/interfaces.dart';

class GetCurrentAccountsStatementUsecase extends GetBankStatementUsecase {
  final BankStatementRepository _bankStatementRepository;

  GetCurrentAccountsStatementUsecase({
    required BankStatementRepository bankStatementRepository,
  }) : _bankStatementRepository = bankStatementRepository;

  @override
  Future call(String token) {
    throw UnimplementedError();
  }
}
