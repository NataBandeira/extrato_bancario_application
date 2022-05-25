import '../../domain/domain.dart';
import '../sources/source.dart';

class CurrentAccountRepository extends BankStatementRepository {
  final RemoteSource _httpClient;

  CurrentAccountRepository({required RemoteSource httpClient})
      : _httpClient = httpClient;

  @override
  Future<BankStatement> getAccountTransactions(String token) {}
}
