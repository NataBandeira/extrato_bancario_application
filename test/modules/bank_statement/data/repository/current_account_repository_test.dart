import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:extrato_bancario_application/app/module/bank_statement/data/data.dart';
import 'package:mocktail/mocktail.dart';

final remoteCurrentAccountMock = BankStatementModel(
    balanceAvailable: 593.60,
    lastUpdate: "1653066205",
    accountType: 013,
    bankTransactions: [
      BankTransactionsModel(
          type: 1,
          description: "",
          identification: "121233",
          date: "1653066205",
          value: 500,
          balanceAfterOperation: 500,
          operation: 0)
    ]);

class RemoteSourceMock extends Mock implements BankAccountSource {}

void main() {
  late BankAccountSource remoteSourceMock;
  late CurrentAccountRepository currentAccountRepository;
  late String token;
  late Map headers;

  setUp(() {
    token = faker.jwt.valid();
    headers = {"Authorization": "Bearer $token"};
    remoteSourceMock = RemoteSourceMock();
    currentAccountRepository =
        CurrentAccountRepository(bankAccountSource: remoteSourceMock);
  });

  test("Should call RemoteSource with correct values ", () async {
    when(() => remoteSourceMock.getTransactions(token: token))
        .thenAnswer((_) async => remoteCurrentAccountMock);

    final result = await currentAccountRepository.getAccountTransactions(token);

    expect(result, remoteCurrentAccountMock);
  });
}
