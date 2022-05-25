abstract class GetBankStatementUsecase {
  Future<dynamic> call(String userId);
}

class GetBankStatementUsecaseImp extends GetBankStatementUsecase {
  @override
  Future call(String userId) {
    throw UnimplementedError();
  }
}
