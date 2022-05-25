import 'package:extrato_bancario_application/app/module/bank_statement/domain/domain.dart';
import 'package:faker/faker.dart';

import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

class CurrentAccountsRepositoryMock extends Mock
    implements BankStatementRepository {}

void main() {
  late CurrentAccountsRepositoryMock currentAccountsRepository;
  late GetCurrentAccountsStatementUsecase sut;

  setUp(() {
    currentAccountsRepository = CurrentAccountsRepositoryMock();
    sut = GetCurrentAccountsStatementUsecase(
        bankStatementRepository: currentAccountsRepository);
  });

  test("Sloud return a BankStatement", () async {
    when(() => currentAccountsRepository.getAccountTransactions(any()))
        .thenAnswer((_) async {
      return BankStatement(
        accountType: "Current accounts",
        balanceAvailable: 360.00,
      );
    });

    final result = await sut.call(faker.jwt.valid());

    expect(result, isA<BankStatement>());
  });
}