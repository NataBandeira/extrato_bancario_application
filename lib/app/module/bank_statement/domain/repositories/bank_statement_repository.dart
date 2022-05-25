import '../entities/entities.dart';

abstract class BankStatementRepository {
  Future<BankStatement> getAccountTransactions(String token);
}
